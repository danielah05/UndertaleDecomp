if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
{
	global.goldreward[3] += 40
	FL_SparedVulkin = 1
}
scr_monsterdefeat(0, 0, 0, 0, 0)
with (mypart1)
	instance_destroy()
