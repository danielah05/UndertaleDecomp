sprite_index = global.monstersprite
line = 0
finished = false
ht = sprite_get_height(sprite_index)
wd = sprite_get_width(sprite_index)
myvapor = global.vaporspeed
if (myvapor == 0)
	snd_play(snd_vaporized)
finishedreading = false
mydata = scr_getvapordata()
mychar = 0
myread = 0
action_set_alarm(1, 0)
