function scr_bwall()
{
	for (i = 0; i < argument3; i += 1)
	{
	    bone = instance_create(900, 900, obj_bonewall)
	    bone.y = (global.idealborder[3] - argument0)
	    bone.hspeed = argument1
	    bone.x = (320 - (argument2 * argument1))
	    if (bone.x < 320)
	        bone.x -= (i * 15)
	    if (bone.x > 320)
	        bone.x += (i * 15)
	}
}
