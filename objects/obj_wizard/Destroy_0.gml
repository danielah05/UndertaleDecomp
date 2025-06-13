if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
{
	global.goldreward[3] += 60
	FL_SparedMadjick = 1
}
obj_heart.confuse = 0
scr_monsterdefeat(0, 0, 0, 0, 0)
with (mypart1)
	instance_destroy()
