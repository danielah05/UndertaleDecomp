// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
    global.border = 3
    FL_InBattle = true
    FL_TypeHeartTransition = HeartTransitionType.QuickBattle
    SCR_BORDERSETUP()
    instance_create(0, 0, obj_battlerstory)
}
