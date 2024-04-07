ang = (i * 18)
xx = lengthdir_x(radius, ang)
yy = lengthdir_y(radius, ang)
instance_create((xx + x), (yy + y), obj_spinbullet_friendscene)
snd_play(snd_chug)
i += 1
if (i < 20)
{
    alarm[1] = 1
    if (spec == 2)
        alarm[1] = 2
}
