function scr_shake()
{
	instance_create(0, 0, obj_shaker)
	obj_shaker.hshake = argument0
	obj_shaker.vshake = argument1
	obj_shaker.shakespeed = argument2
}
