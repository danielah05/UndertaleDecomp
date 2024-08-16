if (pp[6] == 0)
{
    if (pp[5] == 4)
    {
        if (pp[4] == 3)
        {
            if (pp[3] == 0)
            {
                if (pp[2] == 2)
                {
                    if (pp[1] == 2)
                    {
                        if (pp[0] == 3)
                            won = 1
                    }
                }
            }
        }
    }
}
if (pp[7] == 0)
{
    if (pp[6] == 4)
    {
        if (pp[5] == 3)
        {
            if (pp[4] == 0)
            {
                if (pp[3] == 2)
                {
                    if (pp[2] == 0)
                    {
                        if (pp[1] == 2)
                        {
                            if (pp[0] == 3)
                                won = 1
                        }
                    }
                }
            }
        }
    }
}
if (pp[7] == 0)
{
    if (pp[6] == 4)
    {
        if (pp[5] == 3)
        {
            if (pp[4] == 0)
            {
                if (pp[3] == 2)
                {
                    if (pp[2] == 1)
                    {
                        if (pp[1] == 2)
                        {
                            if (pp[0] == 3)
                                won = 1
                        }
                    }
                }
            }
        }
    }
}
if (pp[12] == 4)
{
    if (pp[11] == 8)
    {
        if (pp[10] == 7)
        {
            if (pp[9] == 4)
            {
                if (pp[8] == 6)
                {
                    if (pp[7] == 6)
                    {
                        if (pp[6] == 7)
                        {
                            if (pp[5] == 4)
                            {
                                if (pp[4] == 7)
                                {
                                    if (pp[3] == 4)
                                    {
                                        if (pp[2] == 6)
                                        {
                                            if (pp[1] == 6)
                                            {
                                                if (pp[0] == 7)
                                                    won = 1
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
if (oldmode == 1)
{
    draw_set_color(c_white)
    ossafe_fill_rectangle(78, 48, 220, 200)
    draw_set_color(c_black)
    ossafe_fill_rectangle(80, 50, 218, 198)
    for (i = 0; i < 5; i += 1)
    {
        draw_set_color(c_white)
        if (played[i] > 0)
            draw_set_color(c_yellow)
        if (justplayed[i] > 0)
            draw_set_color(c_red)
        ossafe_fill_rectangle(((100 + (i * 10)) + 1), 100, (100 + ((i * 10) + 8)), 150)
        if (i > 0 && i < 5)
            draw_sprite(spr_pianoarrow, (i - 1), ((100 + (i * 10)) + 2), 158)
        if (num == i || i == (num - 5))
        {
            draw_set_color(c_lime)
            draw_rectangle((100 + (i * 10)), 99, (100 + ((i * 10) + 9)), 151, true)
            draw_circle(((100 + (i * 10)) + 4), 160, 4, 0)
        }
        if (i == (num + 5))
        {
            draw_set_color(c_teal)
            draw_rectangle((100 + (i * 10)), 99, (100 + ((i * 10) + 9)), 151, true)
            draw_circle(((100 + (i * 10)) + 4), 160, 4, 0)
        }
    }
    draw_set_color(c_lime)
    scr_setfont(fnt_maintext)
    draw_text(120, 60, string_hash_to_newline("X - Quit"))
}
if (oldmode != 1)
{
    if (global.osflavor <= OSFlavors.Mac)
        draw_sprite(scr_getsprite(spr_pxquit), 1, 44, 27)
    if (num == 0)
    {
        bonus = 0
        if (justplayed[num] > 0)
            bonus = 1
        draw_sprite(spr_neutralpbutton, (1 + bonus), 43, 58)
    }
    if (num == 1)
    {
        bonus = 0
        if (justplayed[num] > 0)
            bonus = 1
        draw_sprite(spr_leftpbutton, (1 + bonus), 54, 58)
    }
    if (num == 2)
    {
        bonus = 0
        if (justplayed[num] > 0)
            bonus = 1
        draw_sprite(spr_downpbutton, (1 + bonus), 70, 55)
    }
    if (num == 3)
    {
        bonus = 0
        if (justplayed[num] > 0)
            bonus = 1
        draw_sprite(spr_rightpbutton, (1 + bonus), 81, 58)
    }
    if (num == 4)
    {
        bonus = 0
        if (justplayed[num] > 0)
            bonus = 1
        draw_sprite(spr_uppbutton, (1 + bonus), 97, 55)
    }
}
if (won == 1 && wonned == 0)
{
    if (FL_CompletedPianoPuzzle == 0)
    {
        buffer = 60
        wonned = 1
        alarm[1] = 20
    }
}
