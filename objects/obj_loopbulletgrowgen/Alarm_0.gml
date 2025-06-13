if (blue == BulletType.Blue)
	blue = (floor(random(2)) + 1)
for (i = 0; i < totalbt; i += 1)
{
	dir = (0 + ((i * 360) / totalbt))
	xx = (x + lengthdir_x(radius, (dir - 90)))
	yy = (y + lengthdir_y(radius, (dir - 90)))
	loopbullet = instance_create(xx, yy, blt_loopbulletgrow)
	loopbullet.speed = speed
	loopbullet.anglechange = (360 / (circ / speed))
	loopbullet.direction = dir
	loopbullet.xadd = xadd
	loopbullet.idealradius = idealradius
	loopbullet.dmg = global.monsteratk[myself]
	loopbullet.specialtimer = specialtimer
	if (blue == BulletType.OneOff)
		blue = BulletType.Orange
	if (blue == BulletType.Blue)
	{
		loopbullet.blue = BulletType.Blue
		blue = BulletType.OneOff
	}
	if (blue == BulletType.Orange)
		blue = BulletType.Blue
}
