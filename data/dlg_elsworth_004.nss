//::///////////////////////////////////////////////
//:: FileName dlg_elsworth_004
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 2
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "iElsworthquest") == 4))
		return FALSE;

	return TRUE;
}
