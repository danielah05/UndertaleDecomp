if (global.encounter > steps)
{
	if (global.phasing == 0)
	{
		if (global.interact == 0)
		{
			scr_steps(840, 680, 16, 203)
			global.encounter = 0
			battlegroup = round(random(15))
			if (battlegroup >= 0)
				global.battlegroup = BattleGroup.IcecapJerry
			if (battlegroup > 8)
				global.battlegroup = BattleGroup.IcecapJerrySnowdrake
			if (FL_TundraBattleProgress < 3)
			{
				global.battlegroup = BattleGroup.LesserDog
				FL_TundraBattleProgress = 4
			}
			if (alldead == 2)
				global.battlegroup = BattleGroup.ButNobodyCame
			if (alldead == 1)
			{
				FL_TundraGenocide = 1
				global.battlegroup = BattleGroup.ButNobodyCame
				alldead = 2
			}
			else
				instance_create(0, 0, obj_battleblcon)
		}
	}
	else
		steps = 0
}
