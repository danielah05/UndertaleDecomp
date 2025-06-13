fakeyoff += op.yadd
if (fakeyoff > op.yspace)
{
	fakeyoff = 0
	fakeyamt += 1
}
y = ((fakey + fakeyoff) + (fakeyamt * op.yspace))
if (y > 400)
	instance_destroy()
if (hspeed > 0 && x > (obj_rborder.x - 6))
{
	x -= hspeed
	hspeed = (-hspeed)
}
if (hspeed < 0 && x < (obj_lborder.x + 6))
{
	x -= hspeed
	hspeed = (-hspeed)
}
