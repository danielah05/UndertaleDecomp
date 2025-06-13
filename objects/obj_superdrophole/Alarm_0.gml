global.interact = 4
global.phasing = 1
if (room == room_ruins15B)
	FL_WrongSwitchesPressedCount += 1
alarm[1] = 1
alarm[2] = 2
if (sd_noise == 0)
{
	snd_play(snd_fall2)
	with (obj_superdrophole)
		sd_noise = 1
}
