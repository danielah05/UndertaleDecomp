function scr_bouncer()
{
	bouncer = instance_create(x, y, obj_bouncer)
	bouncer.myobject = argument0
	bouncer.bounceamt = argument1
	bouncer.grav = argument2
}
