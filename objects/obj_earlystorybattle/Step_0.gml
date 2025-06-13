if (room == room_asghouse2 && con == 0 && FL_EarlyStoryProgressCounter <= 2 && FL_EarlyStoryParam1 == 0)
{
	if (obj_mainchara.x < 90)
	{
		global.border = 3
		FL_InBattle = true
		FL_TypeHeartTransition = HeartTransitionType.QuickBattle
		SCR_BORDERSETUP()
		instance_create(0, 0, obj_battleblcon)
		FL_EarlyStoryParam1 = 1
		con = 1
		alarm[0] = 50
	}
}
if (room == room_asghouse2 && con < 2 && FL_EarlyStoryProgressCounter <= 2 && FL_EarlyStoryParam1 == 1 && FL_EarlyStoryParam2 < 2)
{
	if (obj_mainchara.x > 180)
	{
		global.border = 3
		FL_InBattle = true
		FL_TypeHeartTransition = HeartTransitionType.QuickBattle
		SCR_BORDERSETUP()
		instance_create(0, 0, obj_battleblcon)
		FL_EarlyStoryParam1 = 2
		con = 3
		alarm[0] = 50
	}
}
if (room == room_asghouse3 && con == 0 && FL_EarlyStoryProgressCounter <= 2 && FL_EarlyStoryParam2 == 0)
{
	if (obj_mainchara.x > 460)
	{
		global.border = 3
		FL_InBattle = true
		FL_TypeHeartTransition = HeartTransitionType.QuickBattle
		SCR_BORDERSETUP()
		instance_create(0, 0, obj_battleblcon)
		FL_EarlyStoryParam2 = 1
		con = 1
		alarm[0] = 50
	}
}
if (room == room_asghouse3 && con < 2 && FL_EarlyStoryProgressCounter <= 2 && FL_EarlyStoryParam2 == 1 && FL_EarlyStoryParam1 < 2)
{
	if (obj_mainchara.x < 100)
	{
		global.border = 3
		FL_InBattle = true
		FL_TypeHeartTransition = HeartTransitionType.QuickBattle
		SCR_BORDERSETUP()
		instance_create(0, 0, obj_battleblcon)
		FL_EarlyStoryParam2 = 2
		con = 3
		alarm[0] = 50
	}
}
