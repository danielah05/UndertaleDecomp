global.border = 3
FL_InBattle = true
FL_TypeHeartTransition = HeartTransitionType.QuickBattle
FL_QuickBattleType = QuickBattleType.UndyneSpear
SCR_BORDERSETUP()
instance_create(0, 0, obj_battlerquick)
obj_undynespear.active = 2
if instance_exists(obj_uspeargen)
	obj_uspeargen.alarm[0] += 30
