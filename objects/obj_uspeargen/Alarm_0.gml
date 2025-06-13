move = 0
if instance_exists(obj_undynea_actor)
{
	move = obj_undynea_actor.hspeed
	obj_undynea_actor.sprite_index = spr_undyne_starkd_arm
	obj_undynea_actor.alarm[8] = 20
	star = instance_create((x - 5), (y + 5), obj_magicstar)
	star.hspeed = move
	star.depth = (obj_undynea_actor.depth - 1)
	snd_play(snd_spearappear)
}
xx = x
yy = y
if (room == room_water9)
{
	xx = -100
	yy = choose(240, 0)
}
repeat (3)
{
	a = instance_create((xx - 5), (yy + 5), obj_undynespear)
	a.move = move
}
if (spearamt < 35)
{
	spearamt += 0.3
	if (spearamt > 13)
		spearamt += 0.4
}
else
{
	snd_play(snd_squeak)
	if (room == room_water8)
		FL_UndyneSpearsAnger = 1
}
alarm[0] = 48
alarm[0] -= spearamt
