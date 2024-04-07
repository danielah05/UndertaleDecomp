if (side == 1)
{
    other_pos = -1
    with (obj_hearthalf)
    {
        if (side == 0)
            obj_hearthalf.other_pos = curpos
    }
    for (i = 0; i < 5; i += 1)
    {
        ok = 1
        if (i >= 3 && vertical_ok == 0)
            ok = 0
        if (curpos == i)
            ok = 0
        if (other_pos == i)
            ok = 0
        if (ok == 1)
        {
            if (peg_alpha[i] < 1)
                peg_alpha[i] += 0.25
        }
        else if (peg_alpha[i] > 0)
            peg_alpha[i] -= 0.25
        draw_sprite_ext(spr_heart_posmarker, 0, (xpos[i] + 7), (ypos[i] + 7), 1, 1, 0, c_white, peg_alpha[i])
    }
    if (border_draw == 1)
    {
        if (vertical_ok == 1)
        {
            if (box_index < 5)
                box_index += 1
        }
        else if (box_index > 0)
            box_index -= 1
        draw_sprite_ext(spr_battlebox_cross, box_index, (xpos[1] + 8), (ypos[1] + 8), 1, 1, 0, c_white, 1)
    }
}
if (side == 0)
    draw_sprite_ext(spr_heart_lefthalf, image_index, x, y, 1, 1, 0, image_blend, image_alpha)
if (side == 1)
    draw_sprite_ext(spr_heart_righthalf, image_index, x, y, 1, 1, 0, image_blend, image_alpha)
draw_sprite_ext(spr_heart_halvesoutline, image_index, x, y, 1, 1, 0, c_white, image_alpha)
