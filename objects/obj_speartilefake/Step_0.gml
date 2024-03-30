if (con == 1)
{
    snd_play(snd_spearappear)
    image_alpha += 0.1
    con = 2
}
if (con == 2)
{
    image_alpha += 0.07
    if (image_alpha > 0.97)
    {
        image_alpha = 1
        con = 3
    }
}
if (con == 6)
{
    image_index = 3
    con = 7
    alarm[5] = 20
}
if (con == 8)
{
    image_alpha -= 0.1
    if (image_alpha < 0.1)
        instance_destroy()
}
