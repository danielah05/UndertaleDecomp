if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
	global.goldreward[3] += 12
if (killed == 1)
	FL_SnowdrakeStatus = SnowdrakeStatus.Killed
scr_monsterdefeat(0, 0, 0, 0, 0)
with (mypart1)
	instance_destroy()
with (mypart2)
	instance_destroy()
