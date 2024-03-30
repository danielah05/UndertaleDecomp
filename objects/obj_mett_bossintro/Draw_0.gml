if (blacker == 1)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle(0, 240, 640, 480)
}
if (con == 8)
{
    if (flasher == 1 || flasher == 2)
    {
        if (flasher == 1)
            flashamt += 0.2
        if (flashamt > 2)
        {
            caster_stop(presong)
            caster_play(flashsound, 1, 1)
            flasher = 2
            with (n)
                instance_destroy()
            with (n2)
                instance_destroy()
            cloud = 0
            with (obj_stagecloud)
                instance_destroy()
            mb = obj_mettb_body
            mb.sineron = 1
            mb.myblend = c_white
            mb.myalpha = 1
            blacker = 0
        }
        if (flasher == 2)
            flashamt -= 0.4
        if (flashamt < 0)
        {
            flasher = 0
            con = 9
        }
        draw_set_color(c_white)
        draw_set_alpha(flashamt)
        ossafe_fill_rectangle(-1, -1, 700, 700)
        draw_set_alpha(1)
    }
}
