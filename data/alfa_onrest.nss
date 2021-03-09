/******************************************************************
 * Name: alfa_onrest
 * Type: OnPlayerRest
 * ---
 * Author: Modal
 * Date: 08/30/02
 * ---
 * This handles the module OnPlayerRest event.
 * You can add custom code in the appropriate section, as well as
 * in alfa_userdef.
 ******************************************************************/

/* Includes */
#include "alfa_include"
#include "nwnx_player"
#include "nwnx_consts"

void main()
{
    object oPC = GetLastPCRested();
    NWNX_Player_SetRestAnimation(oPC,
        NWNX_Consts_TranslateNWScriptAnimation(ANIMATION_LOOPING_DEAD_BACK));
    ALFA_OnRest();

    /**************** Add Custom Code Here ***************/
    ExecuteScript("cmk_herbsleep", GetItemActivator());
    /*****************************************************/
}
