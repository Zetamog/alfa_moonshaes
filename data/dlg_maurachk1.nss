//::///////////////////////////////////////////////
//:: FileName dlg_maurachk1
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 0
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "iMauraquest") == 1))
		return FALSE;

	return TRUE;
}
