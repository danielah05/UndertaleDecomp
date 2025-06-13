alarm[3] = tums
instance_create(0, 0, obj_speartile)
instance_create(0, 0, obj_speartile)
instance_create(0, 0, obj_speartile)
instance_create(0, 0, obj_speartile)
instance_create(0, 0, obj_speartile)
instance_create(0, 0, obj_speartile)
instance_create(0, 0, obj_speartile)
g = instance_create(0, 0, obj_speartile)
g.duty = 1
if (tums > 35)
	tums -= 0.75
if (tums <= 35 && tums > 28)
	tums -= 0.25
if (tums > 15 && tums <= 28)
	tums -= 0.5
snd_play(snd_spearappear)
if (tums <= 15)
{
	snd_play(snd_squeak)
	if (room == room_water_undynebridge)
		FL_UncheckedButSet_285 = 1
}
