#include "_btb_util"
#include "_btb_moonwellcon"
#include "_btb_moonwelluti"
#include "_btb_moonwellspa"
#include "_btb_moonwelltal"
#include "_btb_moonwellint"
#include "_btb_moonwelllea"

/**
 *  Check if no PCs in area if there are none clean up.
 */
int checkCleanUp(object obHbObj, object highDruid, object Druid01,
                  object Druid02, object Druid03, object Druid04,
                  object light) {

    object firstPCInArea = GetFirstPCInArea(GetArea(obHbObj));
    if(firstPCInArea == OBJECT_INVALID) {
        object wisp = GetNearestObjectByTag("moonwellwisp");
        DestroyObject(wisp);
        DestroyObject(highDruid, 1.0);
        DestroyObject(Druid01, 1.0);
        DestroyObject(Druid02, 1.0);
        DestroyObject(Druid03, 1.0);
        DestroyObject(Druid04, 1.0);
        DestroyObject(light, 1.0);
        DestroyObject(obHbObj, 1.1);
        WriteTimestampedLogEntry("No PCs in the area tearing everything down.");
        return TRUE;
    }

    return FALSE;
}

void main()
{
    object obHbObj = OBJECT_SELF;
    object highDruid = GetNearestObjectByTag("moonwelldruid000");
    object Druid01 = GetNearestObjectByTag("moonwelldruid001");
    object Druid02 = GetNearestObjectByTag("moonwelldruid002");
    object Druid03 = GetNearestObjectByTag("moonwelldruid003");
    object Druid04 = GetNearestObjectByTag("moonwelldruid004");
    object light = GetNearestObjectByTag("alfa_shaftligt6");

    int timer = GetLocalInt(obHbObj, "timer");
    int state = GetLocalInt(obHbObj, "state");
    object oPC = GetLocalObject(obHbObj, "oPC");

    //logDruidInitialCond(highDruid, Druid01, Druid02, Druid03,Druid04,state,oPC);
    //checkInputs(obHbObj, highDruid, Druid01, Druid02, Druid03, Druid04, oPC);

    // If anyone is in combat exit out of here.
    if(InCombat(highDruid, Druid01, Druid02, Druid03, Druid04)) {
        WriteTimestampedLogEntry("In Combat Exit");
        return ;
    }

    // check if we need to clean things up.
    if(checkCleanUp(obHbObj,highDruid,Druid01,Druid02,Druid03,Druid04,light)) {
        return;
    }

    // if a dm has disabled the scene or its not in progress skip out.
    if(state == DM_DISABLED_STATE || state == NO_STATE  || state == DONE_STATE
        || state == ATTACKING_STATE){
        WriteTimestampedLogEntry("In Do Not Run State Exit");
        return;
    // if were starting fresh or over spawn or reset peices.
    } else if(state == SPAWN_STATE) {
        WriteTimestampedLogEntry("In Spawn State");
        moonwellSpawn(oPC, obHbObj, highDruid, Druid01,
                        Druid02, Druid03, Druid04, state, light);
    // if the peices are set start interogating.
    } else if(state == INTEROGATION_STATE) {
        WriteTimestampedLogEntry("In Interogation State");
         // the pc steped into the light
         if(GetDistanceBetween(light, oPC) < 0.6) {
            startConversation(state, oPC, highDruid, obHbObj);
         } else {
            interogate(timer, highDruid, oPC, obHbObj, state);
        }
    // if were supposed to be talking still and arent talk again.
    } else if(state == CONVERSATION_STATE) {
        WriteTimestampedLogEntry("In Conversation State");
        if(!IsInConversation(highDruid)) {
            startConversation(state, oPC, highDruid, obHbObj);
        }
    // if we just ended the conversation assign conversation and default convo
    // and start the timer to leave.
    } else if(state == CONVO_END_STATE) {
        // if we are in a conversation do nothing
        if(IsInConversation(highDruid)) {
            return;
        }
        SetEventScript(highDruid, EVENT_SCRIPT_CREATURE_ON_DIALOGUE,
                       "_btb_moon_con04");
        // other wise check if we should leave.
        int turnsSinceConvo = GetLocalInt(obHbObj, "turns_since_convo");
        if(turnsSinceConvo > 2) {
            SetLocalInt(obHbObj, "state", LEAVING_STATE);
            SetEventScript(highDruid, EVENT_SCRIPT_CREATURE_ON_DIALOGUE, "");
        } else {
            SetLocalInt(obHbObj, "turns_since_convo", turnsSinceConvo + 1);
        }
    } else if (state == WARN_STATE) {
        string warnStr = "Leave now this is your final warning!";
        AssignCommand(highDruid, SpeakString(warnStr));
        SendMessageToPC(oPC, "High Druid: " + warnStr);
        SetLocalInt(OBJECT_SELF, "state", ATTACK_STATE);
    } else if (state == ATTACK_STATE) {
            WriteTimestampedLogEntry("In Attack State");
            AssignCommand(highDruid, SpeakString(
                "**Frowns and signals the other druids to attack**"));
            AssignCommand(Druid01, ActionAttack(oPC, TRUE));
            AssignCommand(Druid02, ActionAttack(oPC, TRUE));
            AssignCommand(Druid03, ActionAttack(oPC, TRUE));
            AssignCommand(Druid04, ActionAttack(oPC, TRUE));
            AssignCommand(highDruid, ActionAttack(oPC, TRUE));
            WriteTimestampedLogEntry("State Change From: " + getState(state) +
                         " To: " + getState(ATTACKING_STATE));
            SetLocalInt(OBJECT_SELF, "state", ATTACKING_STATE);
    } else if (state == LEAVING_STATE) {
        WriteTimestampedLogEntry("In Leave State");
        druidsLeave(oPC, obHbObj, highDruid, Druid01, Druid02, Druid03,
                    Druid04, state, light);
    }
}
