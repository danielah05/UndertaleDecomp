sidebl[i] = instance_create((x + 250), ((y - 40) + (i * 10)), obj_spinbullet_friendscene)
if (i < 8)
    alarm[2] = 1
amt += 1
i += 1
alarm[10] = 10
snd_play(snd_chug)
