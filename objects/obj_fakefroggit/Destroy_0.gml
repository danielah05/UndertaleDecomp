if (mercymod == 30 && global.monsterhp[myself] == global.monstermaxhp[myself])
{
	if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
		global.goldreward[3] += 2
}
scr_monsterdefeat(0, 0, 0, 0, 0)
with (mypart1)
	instance_destroy()
with (mypart2)
	instance_destroy()
