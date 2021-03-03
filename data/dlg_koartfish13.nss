//::///////////////////////////////////////////////
//:: FileName dlg_koartfish13
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 0
//:://////////////////////////////////////////////
void main()
{
	// Give the speaker some gold
	GiveGoldToCreature(GetPCSpeaker(), 1);

	// Give the speaker some XP
	GiveXPToCreature(GetPCSpeaker(), 2);


	// Remove items from the player's inventory
	object oItemToTake;
	oItemToTake = GetItemPossessedBy(GetPCSpeaker(), "_fishing_item05");
	if(GetIsObjectValid(oItemToTake) != 0)
		DestroyObject(oItemToTake);
}
