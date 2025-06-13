snd_play(snd_noise)
if (background_visible_get(1) == true)
{
	background_visible_set(0, true)
	background_visible_set(1, false)
	idealvolume[0] = 0
	idealvolume[1] = 1
}
else
{
	background_visible_set(0, false)
	background_visible_set(2, false)
	background_visible_set(1, true)
	idealvolume[0] = 1
	idealvolume[1] = 0
}
myinteract = 0
global.interact = 0
