/************************ [On Conversation] ************************************
    Filename: j_ai_onconversat or nw_c2_default4
************************* [On Conversation] ************************************
    OnConversation/ Listen to shouts.
    Documented, and checked. -Working-

    Added spawn in condition - Never clear actions when talking.
************************* [History] ********************************************
    1.3 - Added in conversation thing - IE we can set speakstrings, no need for conversation file.
        - Sorted more shouts out.
        - Should work right, and not cause too many actions (as we ignore
          shouts for normally 12 or so seconds before letting them affect us again).
************************* [Workings] *******************************************
    Uses RespondToShout to react to allies' shouts, and just attacks any enemy
    who speaks, or at least moves to them. (OK, dumb if they are invisible, but
    oh well, they shouldn't talk so loud!)

    Remember, whispers are never heard if too far away, speakstrings don't go
    through walls, and shouts are always heard (so we don't go off to anyone
    not in our area, remember)
************************* [Arguments] ******************************************
    Arguments: GetListenPatternNumber, GetLastSpeaker, TestStringAgainstPattern,
               GetMatchedSubstring
************************* [On Conversation] ***********************************/

#include "j_inc_other_ai"
#include "_btb_dms_rsi_const"

void main()
{
    // check if DM has toggled off custom scripts.
    int curState = GetLocalInt(GetArea(OBJECT_SELF), EAMON_STATE);
    if (curState == CONVERSATION_DM_DISABLED) {
        return;
    }

   int nMatch2 = GetListenPatternNumber();
    float x8  =  1.5;
    float x7  =  3.5;
    float x9  =  3.7;
    float x10  =  1.7;
    float x1  =  4.0;
    float x2  =  6.0;
    float x3  =  8.9;
    float x4  =  12.0;
    float x6  =  12.1;
    float x5  =  12.2;


    if(nMatch2 == 2002)
    {
        if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetGold(GetLastSpeaker()) >= 2)
            {
                SpeakString("Commen right up.");
                TakeGoldFromCreature(2, GetLastSpeaker(), TRUE);
                object drink = CreateItemOnObject("bitterblack", OBJECT_SELF, 1);

                ActionMoveToObject(GetObjectByTag("EamonMove01"), FALSE, 0.5);
                DelayCommand(x7, SetFacing(GetFacing(GetObjectByTag("EamonMove01"))));
                DelayCommand(x9, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x1, SpeakString("**Pours Drink**"));
                DelayCommand(x2, ActionMoveToObject(GetObjectByTag("EamonMove02"), FALSE, 0.5));
                DelayCommand(x3, SetFacing(GetFacing(GetObjectByTag("EamonMove02"))));
                DelayCommand(x4, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x6, SpeakString("Here ya go. **Hands you drink**"));
                DelayCommand(x5, ActionGiveItem( drink, GetLastSpeaker()) );
                return;

            }

            SpeakString("Yes gots to pay lad.");
        }


    }
    if(nMatch2 == 2003)
    {
        if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetGold(GetLastSpeaker()) >= 4)
            {
                SpeakString("Commen right up.");
                TakeGoldFromCreature(4, GetLastSpeaker(), TRUE);
                object drink = CreateItemOnObject("item004", OBJECT_SELF, 1);

                ActionMoveToObject(GetObjectByTag("EamonMove01"), FALSE, 0.5);
                DelayCommand(x7, SetFacing(GetFacing(GetObjectByTag("EamonMove01"))));
                DelayCommand(x9, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x1, SpeakString("**Pours Drink**"));
                DelayCommand(x2, ActionMoveToObject(GetObjectByTag("EamonMove02"), FALSE, 0.5));
                DelayCommand(x3, SetFacing(GetFacing(GetObjectByTag("EamonMove02"))));
                DelayCommand(x4, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x6, SpeakString("Here ya go. **Hands you drink**"));
                DelayCommand(x5, ActionGiveItem( drink, GetLastSpeaker()) );
                return;

            }

            SpeakString("Yes gots to pay lad.");
        }


    }
    if(nMatch2 == 2004)
    {
        if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetGold(GetLastSpeaker()) >= 1)
            {
                SpeakString("Commen right up.");
                TakeGoldFromCreature(1, GetLastSpeaker(), TRUE);
                object drink = CreateItemOnObject("mead", OBJECT_SELF, 1);

                ActionMoveToObject(GetObjectByTag("EamonMove01"), FALSE, 0.5);
                DelayCommand(x7, SetFacing(GetFacing(GetObjectByTag("EamonMove01"))));
                DelayCommand(x9, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x1, SpeakString("**Pours Drink**"));
                DelayCommand(x2, ActionMoveToObject(GetObjectByTag("EamonMove02"), FALSE, 0.5));
                DelayCommand(x3, SetFacing(GetFacing(GetObjectByTag("EamonMove02"))));
                DelayCommand(x4, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x6, SpeakString("Here ya go. **Hands you drink**"));
                DelayCommand(x5, ActionGiveItem( drink, GetLastSpeaker()) );
                return;
            }

            SpeakString("Yes gots to pay lad.");
        }


    }
    if(nMatch2 == 2005)
    {
        if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetGold(GetLastSpeaker()) >= 6)
            {
                SpeakString("Commen right up.");
                TakeGoldFromCreature(6, GetLastSpeaker(), TRUE);
                object drink = CreateItemOnObject("winterwine", OBJECT_SELF, 1);

                ActionMoveToObject(GetObjectByTag("EamonMove03"), FALSE, 0.5);
                DelayCommand(x8, SetFacing(GetFacing(GetObjectByTag("EamonMove03"))));
                DelayCommand(x10, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x1, SpeakString("**Pours Drink**"));
                DelayCommand(x2, ActionMoveToObject(GetObjectByTag("EamonMove02"), FALSE, 0.5));
                DelayCommand(x3, SetFacing(GetFacing(GetObjectByTag("EamonMove02"))));
                DelayCommand(x4, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x6, SpeakString("Here ya go. **Hands you drink**"));
                DelayCommand(x5, ActionGiveItem( drink, GetLastSpeaker()) );
                return;

            }

            SpeakString("Yes gots to pay lad.");
        }


    }

    if(nMatch2 == 2006)
    {
        if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetGold(GetLastSpeaker()) >= 1)
            {
                SpeakString("Commen right up.");
                TakeGoldFromCreature(1, GetLastSpeaker(), TRUE);
                object drink = CreateItemOnObject("whitewine", OBJECT_SELF, 1);

                ActionMoveToObject(GetObjectByTag("EamonMove03"), FALSE, 0.5);
                DelayCommand(x8, SetFacing(GetFacing(GetObjectByTag("EamonMove03"))));
                DelayCommand(x10, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x1, SpeakString("**Pours Drink**"));
                DelayCommand(x2, ActionMoveToObject(GetObjectByTag("EamonMove02"), FALSE, 0.5));
                DelayCommand(x3, SetFacing(GetFacing(GetObjectByTag("EamonMove02"))));
                DelayCommand(x4, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x6, SpeakString("Here ya go. **Hands you drink**"));
                DelayCommand(x5, ActionGiveItem( drink, GetLastSpeaker()) );
                return;

            }

            SpeakString("Yes gots to pay lad.");
        }


    }
    if(nMatch2 == 2007)
    {
        if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetGold(GetLastSpeaker()) >= 2)
            {
                SpeakString("Commen right up.");
                TakeGoldFromCreature(2, GetLastSpeaker(), TRUE);
                object drink = CreateItemOnObject("spicedwine", OBJECT_SELF, 1);

                ActionMoveToObject(GetObjectByTag("EamonMove03"), FALSE, 0.5);
                DelayCommand(x8, SetFacing(GetFacing(GetObjectByTag("EamonMove03"))));
                DelayCommand(x10, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x1, SpeakString("**Pours Drink**"));
                DelayCommand(x2, ActionMoveToObject(GetObjectByTag("EamonMove02"), FALSE, 0.5));
                DelayCommand(x3, SetFacing(GetFacing(GetObjectByTag("EamonMove02"))));
                DelayCommand(x4, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x6, SpeakString("Here ya go. **Hands you drink**"));
                DelayCommand(x5, ActionGiveItem( drink, GetLastSpeaker()) );
                return;

            }

            SpeakString("Yes gots to pay lad.");
        }


    }
     if(nMatch2 == 2008)
    {
        if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetGold(GetLastSpeaker()) >= 1)
            {
                SpeakString("Commen right up.");
                TakeGoldFromCreature(1, GetLastSpeaker(), TRUE);
                object drink = CreateItemOnObject("tablewine", OBJECT_SELF, 1);

                ActionMoveToObject(GetObjectByTag("EamonMove03"), FALSE, 0.5);
                DelayCommand(x8, SetFacing(GetFacing(GetObjectByTag("EamonMove03"))));
                DelayCommand(x10, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x1, SpeakString("**Pours Drink**"));
                DelayCommand(x2, ActionMoveToObject(GetObjectByTag("EamonMove02"), FALSE, 0.5));
                DelayCommand(x3, SetFacing(GetFacing(GetObjectByTag("EamonMove02"))));
                DelayCommand(x4, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x6, SpeakString("Here ya go. **Hands you drink**"));
                DelayCommand(x5, ActionGiveItem( drink, GetLastSpeaker()) );
                return;

            }

            SpeakString("Yes gots to pay lad.");
        }


    }
     if(nMatch2 == 2009)
    {
        if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetGold(GetLastSpeaker()) >= 10)
            {
                SpeakString("Commen right up.");
                TakeGoldFromCreature(10, GetLastSpeaker(), TRUE);
                object drink = CreateItemOnObject("coffee", OBJECT_SELF, 1);

                ActionMoveToObject(GetObjectByTag("EamonMove03"), FALSE, 0.5);
                DelayCommand(x8, SetFacing(GetFacing(GetObjectByTag("EamonMove03"))));
                DelayCommand(x10, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x1, SpeakString("**Pours Drink**"));
                DelayCommand(x2, ActionMoveToObject(GetObjectByTag("EamonMove02"), FALSE, 0.5));
                DelayCommand(x3, SetFacing(GetFacing(GetObjectByTag("EamonMove02"))));
                DelayCommand(x4, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x6, SpeakString("Here ya go. **Hands you drink**"));
                DelayCommand(x5, ActionGiveItem( drink, GetLastSpeaker()) );
                return;

            }

            SpeakString("Yes gots to pay lad.");
        }


    }
    if(nMatch2 == 2010)
    {
        if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetGold(GetLastSpeaker()) >= 2)
            {
                SpeakString("Commen right up.");
                TakeGoldFromCreature(2, GetLastSpeaker(), TRUE);
                object drink = CreateItemOnObject("ale", OBJECT_SELF, 1);

                ActionMoveToObject(GetObjectByTag("EamonMove01"), FALSE, 0.5);
                DelayCommand(x7, SetFacing(GetFacing(GetObjectByTag("EamonMove01"))));
                DelayCommand(x9, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x1, SpeakString("**Pours Drink**"));
                DelayCommand(x2, ActionMoveToObject(GetObjectByTag("EamonMove02"), FALSE, 0.5));
                DelayCommand(x3, SetFacing(GetFacing(GetObjectByTag("EamonMove02"))));
                DelayCommand(x4, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x6, SpeakString("Here ya go. **Hands you drink**"));
                DelayCommand(x5, ActionGiveItem( drink, GetLastSpeaker()) );
                return;

            }

            SpeakString("Yes gots to pay lad.");
        }


    }
    if(nMatch2 == 2011)
    {
        if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetGold(GetLastSpeaker()) >= 2)
            {
                SpeakString("Commen right up.");
                TakeGoldFromCreature(2, GetLastSpeaker(), TRUE);
                object drink = CreateItemOnObject("milk", OBJECT_SELF, 1);

                ActionMoveToObject(GetObjectByTag("EamonMove03"), FALSE, 0.5);
                DelayCommand(x8, SetFacing(GetFacing(GetObjectByTag("EamonMove03"))));
                DelayCommand(x10, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x1, SpeakString("**Pours Drink**"));
                DelayCommand(x2, ActionMoveToObject(GetObjectByTag("EamonMove02"), FALSE, 0.5));
                DelayCommand(x3, SetFacing(GetFacing(GetObjectByTag("EamonMove02"))));
                DelayCommand(x4, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x6, SpeakString("Here ya go. **Hands you drink**"));
                DelayCommand(x5, ActionGiveItem( drink, GetLastSpeaker()) );
                return;

            }

            SpeakString("Yes gots to pay lad.");
        }


    }
    if(nMatch2 == 2012)
    {
        if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetGold(GetLastSpeaker()) >= 1)
            {
                SpeakString("Commen right up.");
                TakeGoldFromCreature(1, GetLastSpeaker(), TRUE);
                object drink = CreateItemOnObject("milk004", OBJECT_SELF, 1);

                ActionMoveToObject(GetObjectByTag("EamonMove03"), FALSE, 0.5);
                DelayCommand(x8, SetFacing(GetFacing(GetObjectByTag("EamonMove03"))));
                DelayCommand(x10, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x1, SpeakString("**Pours Drink**"));
                DelayCommand(x2, ActionMoveToObject(GetObjectByTag("EamonMove02"), FALSE, 0.5));
                DelayCommand(x3, SetFacing(GetFacing(GetObjectByTag("EamonMove02"))));
                DelayCommand(x4, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x6, SpeakString("Here ya go. **Hands you drink**"));
                DelayCommand(x5, ActionGiveItem( drink, GetLastSpeaker()) );
                return;

            }

            SpeakString("Yes gots to pay lad.");
        }


    }
    if(nMatch2 == 2013)
    {
        if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetGold(GetLastSpeaker()) >= 6)
            {
                SpeakString("Commen right up.");
                TakeGoldFromCreature(6, GetLastSpeaker(), TRUE);
                object drink = CreateItemOnObject("spirits", OBJECT_SELF, 1);

                ActionMoveToObject(GetObjectByTag("EamonMove03"), FALSE, 0.5);
                DelayCommand(x8, SetFacing(GetFacing(GetObjectByTag("EamonMove03"))));
                DelayCommand(x10, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x1, SpeakString("**Pours Drink**"));
                DelayCommand(x2, ActionMoveToObject(GetObjectByTag("EamonMove02"), FALSE, 0.5));
                DelayCommand(x3, SetFacing(GetFacing(GetObjectByTag("EamonMove02"))));
                DelayCommand(x4, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x6, SpeakString("Here ya go. **Hands you drink**"));
                DelayCommand(x5, ActionGiveItem( drink, GetLastSpeaker()) );
                return;

            }

            SpeakString("Yes gots to pay lad.");
        }


    }
    if(nMatch2 == 2014)
    {
        if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetGold(GetLastSpeaker()) >= 1)
            {
                SpeakString("Commen right up.");
                TakeGoldFromCreature(1, GetLastSpeaker(), TRUE);
                object drink = CreateItemOnObject("milk001", OBJECT_SELF, 1);

                ActionMoveToObject(GetObjectByTag("EamonMove03"), FALSE, 0.5);
                DelayCommand(x8, SetFacing(GetFacing(GetObjectByTag("EamonMove03"))));
                DelayCommand(x10, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x1, SpeakString("**Pours Drink**"));
                DelayCommand(x2, ActionMoveToObject(GetObjectByTag("EamonMove02"), FALSE, 0.5));
                DelayCommand(x3, SetFacing(GetFacing(GetObjectByTag("EamonMove02"))));
                DelayCommand(x4, ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 1.0));
                DelayCommand(x6, SpeakString("Here ya go. **Hands you drink**"));
                DelayCommand(x5, ActionGiveItem( drink, GetLastSpeaker()) );
                return;

            }

            SpeakString("Yes gots to pay lad.");
        }


    }

    if(nMatch2 == 2015)
    {
       if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
           if(GetCampaignInt("moonshaes","Eamon_familiarity", GetPCSpeaker()) > 20)
            {
             string oPCName = GetName(GetPCSpeaker());
             int stringcutoff = FindSubString(oPCName, " ");
             string oPCFirstName = GetStringLeft(oPCName, stringcutoff);

              SpeakString("Hello " + oPCFirstName);
              return;
            }

            SpeakString("Hello");
        }
    }

    if(nMatch2 == 2016)
    {
       if(GetDistanceBetween(OBJECT_SELF, GetLastSpeaker()) < 5.0)
        {
            if(GetCampaignInt("moonshaes","Eamon_familiarity", GetPCSpeaker()) > 20)
            {
              string oPCName = GetName(GetPCSpeaker());
              int stringcutoff = FindSubString(oPCName, " ");
              string oPCFirstName = GetStringLeft(oPCName, stringcutoff);

              SpeakString("Not to bad " + oPCFirstName);
              return;
            }

            SpeakString("Not to bad");
        }
    }


    // Pre-heartbeat-event
    if(FireUserEvent(AI_FLAG_UDE_ON_DIALOGUE_PRE_EVENT, EVENT_ON_DIALOGUE_PRE_EVENT))
        // We may exit if it fires
        if(ExitFromUDE(EVENT_ON_DIALOGUE_PRE_EVENT)) return;

    // AI status check. Is the AI on?
    if(GetAIOff()) return;

    // Declarations
    int nMatch = GetListenPatternNumber();
    object oShouter = GetLastSpeaker();
    string sSpoken = GetMatchedSubstring(i0);

    //***** ALFA MOD - Danmar's PuppetMaster functionality
    // Did we hear our name and it was spoken by a DM or by a
    // DM possessed creature?
    if ((nMatch == 16650) && ( (GetIsDM(oShouter)) ||
        (GetIsDMPossessed(oShouter))))
    {
        string sPhrase = GetMatchedSubstring(1);
        int nStartCommand;
        int nEndCommand;

        nStartCommand = FindSubString(sPhrase, "<");
        nEndCommand = FindSubString(sPhrase, ">");

        if (nStartCommand > -1 && nEndCommand > nStartCommand)
        {
            string sUpperPhrase = GetStringUpperCase(GetMatchedSubstring(1));
            string sCommand = GetSubString(sUpperPhrase, nStartCommand + 1,
               nEndCommand - nStartCommand - 1);
            SetLocalString(OBJECT_SELF, "PuppetCommand", sCommand);
            ExecuteScript("alfa_puppet", OBJECT_SELF);
        }

        else
        {
            SpeakString(GetMatchedSubstring(1)); //Speak everything else
        }

        return; // Exit out of this script as we found a match.
    }
    //****** end ALFA MOD

    // We can ignore everything under special cases - EG no valid shouter,
    // we are fleeing, its us, or we are not in the same area.
    // - We break out of the script if this happens.
    if(!GetIsObjectValid(oShouter) ||     /* Must be a valid speaker! */
       !GetCommandable() ||               /* Commandable */
        oShouter == OBJECT_SELF ||        /* Not us!     */
        GetIsPerformingSpecialAction() || /* Not fleeing */
        GetIgnore(oShouter) ||            /* Not ignoring the shouter */
        GetArea(oShouter) != GetArea(OBJECT_SELF))/* Same area (Stops "SHOUT" getting NPCs */
    {
        // Fire End of Dialogue event
        FireUserEvent(AI_FLAG_UDE_ON_DIALOGUE_EVENT, EVENT_ON_DIALOGUE_EVENT);
        return;
    }

    // Conversation if not a shout.
    if(nMatch == iM1)
    {
        // Make sure it is a PC and we are not fighting.
        if(!GetIsFighting() && (GetIsPC(oShouter) || GetIsDMPossessed(oShouter)))
        {
            // If we have something random (or not) to say instead of
            // the conversation, we will say that.
            if(GetLocalInt(OBJECT_SELF, ARRAY_SIZE + AI_TALK_ON_CONVERSATION))
            {
                ClearAllActions();// Stop
                SetFacingPoint(GetPosition(oShouter));// Face
                SpeakArrayString(AI_TALK_ON_CONVERSATION);// Speak string
                PlayAnimation(ANIMATION_LOOPING_TALK_NORMAL, f1, f3);// "Talk", then resume potitions.
                ActionDoCommand(ExecuteScript(FILE_WALK_WAYPOINTS, OBJECT_SELF));
            }
            else
            {
                // If we are set to NOT clear all actions, we won't.
                if(!GetSpawnInCondition(AI_FLAG_OTHER_NO_CLEAR_ACTIONS_BEFORE_CONVERSATION, AI_OTHER_MASTER))
                {
                    ClearAllActions();
                }
                BeginConversation();
            }
        }
    }
    // If it is a valid shout...and a valid shouter.
    // - Not a DM. Not ignoring shouting. Not a Debug String.
    else if(!GetLocalTimer(AI_TIMER_SHOUT_IGNORE_ANYTHING_SAID) && // Not listening (IE heard already)
            !GetIsDM(oShouter) && FindSubString(sSpoken, "[Debug]") == iM1)
    {
        if(GetIsFriend(oShouter) || GetFactionEqual(oShouter))
        {
            // If they are a friend, not a PC, and a valid number, react.
            // In the actual RespondToShout call, we do check to see if we bother.
            // - Is PC - or is...master?
            // - Shouts of 1 or over only.
            if(nMatch >= i1 && !GetIsPC(oShouter) && !GetIsPC(GetMaster(oShouter)))
            {
                // Respond to the shout
                RespondToShout(oShouter, nMatch);
            }
            // Else either is PC or is shout 0 (everything!)
            // - not if we are in combat, or they are not.
            else if(!CannotPerformCombatRound() &&
                     GetIsInCombat(oShouter) &&
                     GetObjectType(oShouter) == OBJECT_TYPE_CREATURE)
            {
                // Only use attack target.
                object oIntruder = GetIntruderFromShout(oShouter);
                // Valid, and not a friend if a PC speaker
                if(GetIsObjectValid(oIntruder) &&
                  !GetFactionEqual(oIntruder) &&
                  !GetIsFriend(oIntruder))
                {
                    // 57: "[Shout] Friend (may be PC) in combat. Attacking! [Friend] " + GetName(oShouter)
                    DebugActionSpeakByInt(57, oShouter);
                    DetermineCombatRound(oIntruder);
                }
            }
        }
        else if(GetIsEnemy(oShouter) && GetObjectType(oShouter) == OBJECT_TYPE_CREATURE)
        {
            // If we hear anything said by an enemy, and are not fighting, attack them!
            if(!CannotPerformCombatRound())
                // the negatives are associate shouts, 0+ are my shouts. 0 is anything
            {
                // We make sure it isn't an emote (set by default)
                if(nMatch == i0 && GetSpawnInCondition(AI_FLAG_OTHER_DONT_RESPOND_TO_EMOTES, AI_OTHER_MASTER))
                {
                    // Jump out if its an emote - "*Nods*"
                    if(GetStringLeft(sSpoken, i1) == EMOTE_STAR &&
                       GetStringRight(sSpoken, i1) == EMOTE_STAR)
                    {
                        // Fire End of Dialogue event
                        FireUserEvent(AI_FLAG_UDE_ON_DIALOGUE_EVENT, EVENT_ON_DIALOGUE_EVENT);
                        return;
                    }
                }
                // 58: "[Shout] Responding to shout [Enemy] " + GetName(oShouter) + " Who has spoken!"
                DebugActionSpeakByInt(58, oShouter);
                // Short non-respond
                SetLocalTimer(AI_TIMER_SHOUT_IGNORE_ANYTHING_SAID, f6);
                // Attack the enemy!
                ClearAllActions();
                DetermineCombatRound(oShouter);
            }
        }
    }
    // Fire End of Dialogue event
    FireUserEvent(AI_FLAG_UDE_ON_DIALOGUE_EVENT, EVENT_ON_DIALOGUE_EVENT);
}
