//::///////////////////////////////////////////////
//:: FileName dlg_elswrth_046
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 2
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "iElsworthquest") < 7))
		return FALSE;
	if(!(GetLocalInt(GetPCSpeaker(), "iElsworthquest") > 3))
		return FALSE;

	return TRUE;
}
