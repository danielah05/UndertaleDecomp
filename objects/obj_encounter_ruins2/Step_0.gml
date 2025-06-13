if (global.encounter > steps)
{
	if (global.interact == 0)
	{
		scr_steps(250, 230, 20, 202)
		global.encounter = 0
		battlegroup = random(20)
		if (battlegroup <= 5)
			global.battlegroup = BattleGroup.Froggit
		if (battlegroup > 5)
			global.battlegroup = BattleGroup.Whimsun
		if (battlegroup > 10)
			global.battlegroup = BattleGroup.Moldsmal
		if (battlegroup > 15)
			global.battlegroup = BattleGroup.FroggitWhimsun
		if (battlegroup > 18)
			global.battlegroup = BattleGroup.DoubleFroggit
		if (FL_Hardmode == true)
		{
			if (battlegroup <= 5)
				global.battlegroup = BattleGroup.HardModeFinalFroggitWhimsalot
			if (battlegroup > 5)
				global.battlegroup = BattleGroup.HardModeFinalFroggit
			if (battlegroup > 10)
				global.battlegroup = BattleGroup.HardModeDoubleMoldessa
			if (battlegroup > 15)
				global.battlegroup = BattleGroup.HardModeParsnik
			if (battlegroup > 18)
				global.battlegroup = BattleGroup.HardModeTripleMoldessa
		}
		if (alldead == 2)
			global.battlegroup = BattleGroup.ButNobodyCame
		if (alldead == 1)
		{
			global.battlegroup = BattleGroup.ButNobodyCame
			alldead = 2
		}
		else
			instance_create(0, 0, obj_battleblcon)
	}
}
