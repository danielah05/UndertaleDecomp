if (myinteract == 1)
{
    if (snd_isplaying(snd_movemenu) == false)
        snd_play(snd_movemenu)
    if (image_index == 0)
    {
        image_index = 1
        glow = 1
    }
    else
    {
        image_index = 0
        glow = 0
    }
    myinteract = 0
}
