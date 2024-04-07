if (counter == (num * trip))
{
    xx = lengthdir_x(radius, (add_dir + (((num / maxnum) * 360) * side)))
    yy = lengthdir_y(radius, (add_dir + (((num / maxnum) * 360) * side)))
    spinbullet[num] = instance_create((centerx + xx), (centery + yy), obj_spinbullet_huge)
    num += 1
}
counter += 1
if (counter > ((maxnum - 1) * trip))
{
    snd_stop(snd_instanoise)
    snd_play(snd_instanoise)
    deactivate = 1
    num = -99
    counter = -50
    for (var i = 0; i < maxnum; i += 1)
    {
        if instance_exists(spinbullet[i])
        {
            if (i == 0)
                spinbullet[i].king = obj_musicobjectparent
            spinbullet[i].centerx = centerx
            spinbullet[i].centery = centery
        }
        if (strike == 0)
        {
            with (spinbullet[i])
                alarm[3] = 12
        }
        if (strike == 1)
        {
            with (spinbullet[i])
            {
                move_towards_point(centerx, centery, 12)
                friction = 1
            }
        }
    }
    if (strike == 0)
        instance_destroy()
}
if (counter == -44 && strike == 1)
{
    for (i = 0; i < maxnum; i += 1)
    {
        if instance_exists(spinbullet[i])
        {
            with (spinbullet[i])
                instance_destroy()
        }
    }
    instance_create(centerx, centery, obj_chaosbomb)
    instance_destroy()
}
