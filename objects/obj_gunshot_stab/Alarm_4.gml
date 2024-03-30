g2 = instance_create(x, y, obj_gunshot_2)
g2.image_blend = image_blend
if (crit == 1)
    snd_play(snd_saber3)
shotno += 1
if (shotno < 3)
    alarm[4] = 3
