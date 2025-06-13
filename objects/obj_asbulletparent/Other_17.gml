if (FL_AsrielFightConvoCounter < 3)
{
	dmg = 10
	if (global.hope == 1)
		dmg = 7
	thishp = global.hp
	thisinvc = global.invc
	scr_damagestandard_x()
	if (global.invc > thisinvc)
	{
		if (abs((global.hp - thishp)) < 3)
			global.hp = (thishp - 3)
		if (global.hope == 1)
		{
			if (thishp > 1 && global.hp <= 1)
				global.hp = 1
		}
		if (global.hp <= 0)
			global.hp = 0
	}
	if (global.hope == 2)
		global.hp = 1
}
else
{
	if (global.hp >= 14)
		dmg = 9
	if (global.hp <= 14)
		dmg = 7
	if (global.hp <= 9)
		dmg = 6
	if (global.hp <= 5)
		dmg = 1
	scr_damagestandard_x()
	if (global.hp < 1)
		global.hp = 1
}
