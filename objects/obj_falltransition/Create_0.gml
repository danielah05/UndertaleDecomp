con = 0
finaly = 333
if (FL_FallTranisition == 1)
{
	FL_FallTranisition = 0
	finaly = obj_mainchara.y
	obj_mainchara.y = -20
	obj_mainchara.image_alpha = 0.5
	obj_mainchara.vspeed = 6
	con = 1
	alarm[3] = 4
	global.interact = 1
	global.phasing = 1
}
else
	instance_destroy()
