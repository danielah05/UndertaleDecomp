if (part == 3)
    part = 4
if (part == 2)
{
    vspeed = 0
    part = 3
    alarm[0] = 2
}
if (part == 1)
{
    if (type == 0)
        vspeed = -10
    if (type == 1)
        vspeed = 10
    snd_play(snd_spearrise)
    part = 2
    alarm[0] = 6
}
if (part == 0)
{
    part = 1
    vspeed = 0
    alarm[0] = 12
}
