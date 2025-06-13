// Daniela: bug fix added into the xbox version
if (room == room_ruins11)
{
	if (obj_mainchara.x < 390)
	{
		if instance_exists(obj_goofyrock)
		{
			if (obj_goofyrock.conversation < 15)
				global.encounter = 0
		}
	}
}
if (global.encounter > steps)
{
	if (global.interact == 0)
	{
		scr_steps(290, 100, 20, 202)
		if (FL_Hardmode == true)
			scr_steps(120, 60, 20, 202)
		global.encounter = 0
		battlegroup = random(20)
		if (battlegroup <= 5)
			global.battlegroup = BattleGroup.FroggitWhimsun
		if (battlegroup > 5)
			global.battlegroup = BattleGroup.Moldsmal
		if (battlegroup > 10)
			global.battlegroup = BattleGroup.TripleMoldsmal
		if (battlegroup > 15)
			global.battlegroup = BattleGroup.DoubleFroggit
		if (battlegroup > 18)
			global.battlegroup = BattleGroup.DoubleMoldsmal
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
