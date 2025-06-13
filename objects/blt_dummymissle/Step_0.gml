if (speed > 6)
	friction = 0
if (juice > 0)
{
	image_angle = direction
	curdir = direction
	idealdir = point_direction(x, y, (obj_heart.x + 10), (obj_heart.y + 10))
	facingMinusTarget = (curdir - idealdir)
	angleDiff = facingMinusTarget
	if (abs(facingMinusTarget) > 180)
	{
		if (curdir > idealdir)
			angleDiff = (-1 * ((360 - curdir) + idealdir))
		else
			angleDiff = ((360 - idealdir) + curdir)
	}
	leastAccurateAim = 4
	if (abs(angleDiff) > leastAccurateAim)
	{
		dirspeed = 1
		angleDiff2 = abs(angleDiff)
		if (angleDiff2 > 10)
			dirspeed = 2
		if (angleDiff2 > 20)
			dirspeed = 3
		if (angleDiff2 > 30)
			dirspeed = 4
		if (angleDiff2 > 40)
			dirspeed = 5
		if (angleDiff2 > 50)
			dirspeed = 6
		if (angleDiff2 > 60)
			dirspeed = 7
		if (angleDiff2 > 70)
			dirspeed = 8
		if (angleDiff2 > 80)
			dirspeed = 9
		if (angleDiff2 > 90)
			dirspeed = 10
		if (angleDiff2 > 100)
			dirspeed = 11
		if (angleDiff < 0)
			dirspeed = (-dirspeed)
		direction -= dirspeed
	}
}
juice -= 1
if (juice < 60)
	image_index = 1
if (juice < 30)
	image_index = 2
if (juice < 0)
	image_index = 3
if (juice < -60 && destroy == 0)
	destroy = 1
