if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
	global.goldreward[3] += 20
if (giftgiven == 1)
	global.goldreward[3] = 0
if (giftgiven == 2)
	global.goldreward[3] = 75
scr_monsterdefeat(0, 0, 0, 0, 0)
with (mypart1)
	instance_destroy()
with (mypart2)
	instance_destroy()
if instance_exists(mypart3)
{
	with (mypart3)
		instance_destroy()
}
if instance_exists(mypart4)
{
	with (mypart4)
		instance_destroy()
}
if (googly == 1)
{
	with (mypart5)
		instance_destroy()
}
if instance_exists(mypart8)
{
	with (mypart8)
		instance_destroy()
}
