r = (round(random(1)) + 2)
SCR_BORDER(r, 2)
x = xx
y = yy
if (bullettype == 0)
{
	iii = instance_create(x, y, blt_hoopbullet1)
	if instance_exists(iii)
	{
		iii.dmg = global.monsteratk[myself]
		iii.bullettype = 0
	}
}
else
{
	r = round(random(3))
	SCR_BORDER(r, 8)
	iii = instance_create(x, y, blt_hoopbullet2)
	if instance_exists(iii)
		iii.dmg = global.monsteratk[myself]
}
alarm[0] = firingspeed
