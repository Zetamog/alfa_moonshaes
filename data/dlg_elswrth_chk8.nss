//::///////////////////////////////////////////////
//:: FileName dlg_elswrth_chk8
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 2
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "iElsworthquest") == 8))
		return FALSE;

	return TRUE;
}
