counter = 0
size = 1
hspeed = 1
caster_stop(snd_bombsplosion)
caster_play(snd_bombsplosion, 1, 1)
if (instance_exists(obj_vsflowey_shaker) == false)
{
	shk = instance_create(0, 0, obj_vsflowey_shaker)
	shk.shakex = 6
	shk.shakey = 6
}
