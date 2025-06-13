if (visible == true && shot == 0)
{
	playdo = 1
	myloop = snd_play_ex(snd_mtt_prebomb, 40, true)
	with (other.id)
		instance_destroy()
	shot = 1
	nowx = x
	nowy = y
}
if instance_exists(obj_ratingsmaster)
	global.ratings += 15
