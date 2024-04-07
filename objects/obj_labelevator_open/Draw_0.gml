draw_set_color(c_black)
draw_set_alpha(0.3)
ossafe_fill_rectangle(-10, -10, 999, 999)
draw_set_alpha((1 - (xreveal / 40)))
ossafe_fill_rectangle(-10, -10, (160 - xreveal), 300)
ossafe_fill_rectangle((160 + xreveal), -10, 340, 300)
draw_set_alpha(1)
if (con == 1)
    global.interact = 1
if (con == 2)
{
    if (xreveal == 0)
        snd_play(snd_spearappear)
    xreveal += 2
    if (xreveal >= 20)
    {
        snd_play(snd_impact)
        xreveal = 20
        global.interact = 0
        con = 3
    }
}
