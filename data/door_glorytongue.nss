void main()
{
object oPC = GetLastUsedBy();
if (!GetIsPC(oPC)) return;
object oTarget;
location lTarget;
oTarget = GetWaypointByTag("WP_gloryongue_exit");
lTarget = GetLocation(oTarget);
if (GetAreaFromLocation(lTarget)==OBJECT_INVALID) return;
AssignCommand(oPC, ClearAllActions());
AssignCommand(oPC, ActionJumpToLocation(lTarget));
}
