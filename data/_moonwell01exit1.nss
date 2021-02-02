#include "_moonwell01const"
#include "_btb_moonwelluti"

void main() {
    object oPC = GetExitingObject();
    object obHbObj = GetNearestObjectByTag("moonwell01onhbob", oPC);

    int state = GetLocalInt(obHbObj, "state");
    if(state == DM_DISABLED_STATE || state == DONE_STATE
        || state == ATTACKING_STATE){
        return;
    }
    SetLocalInt(obHbObj, "state", SPAWN_STATE);
    SetLocalObject(obHbObj, "oPC", oPC);
    WriteTimestampedLogEntry("###############################################");
    WriteTimestampedLogEntry("HB Object UUID: " + GetObjectUUID(obHbObj));
    WriteTimestampedLogEntry("State Change From: " + getState(state) +
                             " To: " + getState(SPAWN_STATE));
}
