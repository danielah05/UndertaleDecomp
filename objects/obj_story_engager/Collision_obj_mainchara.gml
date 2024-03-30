if (FL_TruePacifist == true)
{
    instance_destroy()
    return;
}
if (threshold == 17 && FL_AlphysLabLocked >= 12) // Vultu: Interesting, this appeared to have a different purpose in development
    FL_EarlyStoryProgressCounter = 17
if (FL_EarlyStoryProgressCounter >= threshold || FL_DatedAlphys >= 12)
    instance_destroy()
else
{
    FL_EarlyStoryProgressCounter = threshold
    global.border = 3
    FL_InBattle = true
    FL_TypeHeartTransition = HeartTransitionType.QuickBattle
    SCR_BORDERSETUP()
    instance_create(0, 0, obj_battlerstory)
}
