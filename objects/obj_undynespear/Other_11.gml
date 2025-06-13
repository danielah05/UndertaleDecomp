if (active == true)
{
	global.border = 3
	FL_InBattle = true
	FL_TypeHeartTransition = HeartTransitionType.QuickBattle
	FL_QuickBattleType = QuickBattleType.UndyneSpear
	SCR_BORDERSETUP()
	instance_create(0, 0, obj_battlerquick)
	obj_undynespear.active = 2
	if instance_exists(obj_undyneencounter1)
		obj_undyneencounter1.stopper = 1
	if instance_exists(obj_uspeargen)
		obj_uspeargen.alarm[0] += 20
}
