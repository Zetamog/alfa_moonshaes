int StartingConditional()
{
    int nShow = OBJECT_INVALID != GetItemPossessedBy(GetPCSpeaker(), "SulfurMistletoeandaBottleofMinne");
    return nShow;
}
