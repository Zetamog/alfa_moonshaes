//::///////////////////////////////////////////////
//:: FileName dlg_koartfish2
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 0
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "iKoartfishquest") < 1))
		return FALSE;

	return TRUE;
}
