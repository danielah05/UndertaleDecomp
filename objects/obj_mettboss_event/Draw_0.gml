if (drawblack == 1)
{
    if (bl < 20)
        bl += 4
    if (bl > 20)
    {
        bl = 20
        snd_play(snd_noise)
    }
    draw_set_color(x_maroon)
    ossafe_fill_rectangle((140 + bl), (840 + bly), 140, 880)
    ossafe_fill_rectangle((180 - bl), (840 + bly), 180, 880)
}
