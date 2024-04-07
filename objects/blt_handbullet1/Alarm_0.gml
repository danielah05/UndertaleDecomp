if (inactive == 0)
{
    if (x1 == 0)
        iii = instance_create((x + 22), (y + 5), blt_chasefire1)
    else
        iii = instance_create((x + 22), (y + 5), blt_chasefire2)
    if (global.hp < 8)
    {
        with (iii)
            dmg = 2
    }
    if (global.hp < 6)
    {
        with (iii)
            dmg = 1
    }
    snd_play(snd_noise)
    alarm[0] = 4
}
else
    alarm[1] = 100
if (global.hp < 8)
    dmg = 2
if (global.hp < 6)
    dmg = 1
