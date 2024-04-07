if (myinteract == 1 && con == 0)
{
    con = 1
    snd_play(snd_mysterygo)
    image_index = 1
}
if (con == 1)
{
    image_alpha -= 0.03
    if (image_alpha <= 0.03)
        instance_destroy()
}
