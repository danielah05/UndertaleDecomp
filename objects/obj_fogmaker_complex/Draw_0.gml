dr += 1
if (dr > 3)
{
    fog_r += 1
    dr = 0
}
fog_alpha = (obj_mainchara.x / room_width)
i = 0
j = 0
repeat (3)
{
    repeat (32)
    {
        tfr = ((fog_r + i) + (j * 2))
        if (tfr >= 40)
            tfr -= 40
        draw_sprite_part_ext(spr_tundrafog, 0, tfr, 0, 20, 80, (i * 20), (j * 80), 1, 1, c_white, fog_alpha)
        i += 1
    }
    j += 1
    i = 0
}
if (fog_r >= 40)
    fog_r -= 40
