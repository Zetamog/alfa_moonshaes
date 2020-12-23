void YellRunAway() {
    if(GetTag(OBJECT_SELF) == "clav") {
        AssignCommand(OBJECT_SELF, SpeakString("Here they come, fleeee!"));
    } else if(GetTag(OBJECT_SELF) == "jart") {
        AssignCommand(OBJECT_SELF, SpeakString("Bloody things are back!"));
    } else if(GetTag(OBJECT_SELF) == "rolling") {
        AssignCommand(OBJECT_SELF, SpeakString("Hide, dammit, Hide!"));
    }
}

void RandomlyWalkToCorn(){
    if(GetLocalInt(OBJECT_SELF, "walkingToCorn") == 0){
        int cornNum = Random(48) + 1;
        string BASE_OBJ_TAG = "hlf_f1_corn_obj_";
        object corn = GetObjectByTag(BASE_OBJ_TAG + IntToString(cornNum));
        AssignCommand(OBJECT_SELF, ActionInteractObject(corn));
        SetLocalInt(OBJECT_SELF, "walkingToCorn", 1);
    }
}

void main()
{
    // if there is no danger do your thing.
    if(GetLocalInt(OBJECT_SELF, "perilalert") == 0){
        RandomlyWalkToCorn();
    // else run away
    } else {
        YellRunAway();
        ClearAllActions();
        AssignCommand(OBJECT_SELF,
            ActionMoveToObject(GetObjectByTag("corn_farmer_despawn"), TRUE));
    }
}
