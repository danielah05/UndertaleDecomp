if (damageturn == 0)
{
    snd_stop(snd_hurt1)
    snd_play(snd_hurt1)
    global.hp -= 1
    damageturn = 1
}
