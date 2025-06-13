scr_monsterdefeat(0, 0, 0, 0, 0)
if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
{
	global.goldreward[3] += 2
	FL_SparedMigosp = 1
}
