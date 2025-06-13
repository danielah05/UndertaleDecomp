radchange = 0
if (specialtimer > 0)
{
	if (radius < idealradius)
	{
		radius += 2
		radchange = 1
	}
	if (radius > idealradius)
		radius = idealradius
}
else
{
	if (radius > idealradius)
	{
		radius -= 2
		radchange = 2
	}
	if (radius < idealradius)
		radius = idealradius
}
if (radchange == 1)
{
	x += lengthdir_x(2, (direction - 90))
	y += lengthdir_y(2, (direction - 90))
}
if (radchange == 2)
{
	x += lengthdir_x(-2, (direction - 90))
	y += lengthdir_y(-2, (direction - 90))
}
circ = ((2 * pi) * radius)
anglechange = (360 / (circ / speed))
direction += anglechange
if (nxadd < xadd)
	nxadd += 0.125
x += nxadd
y += yadd
specialtimer -= 1
if (specialtimer < 1)
	idealradius = 0.1
