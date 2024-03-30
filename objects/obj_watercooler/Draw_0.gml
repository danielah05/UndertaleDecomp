draw_sprite(sprite_index, image_index, x, y)
height = (21 - FL_WaterTakenCounter)
if (height > 0)
    draw_sprite_part(spr_watercooler_water, 0, 0, (23 - height), 19, height, x, ((y + 23) - height))
if (height > 5)
{
    siner += 1
    for (i = 0; i < 3; i += 1)
    {
        draw_point_color((x + bubx[i]), (y + buby[i]), c_white)
        buby[i] -= (0.1 + random(0.3))
        bubx[i] += (sin(((siner + (i * 2)) / 3)) * 0.25)
        if ((buby[i] + y) < (((y + 23) - height) + 1))
        {
            buby[i] = 20
            bubx[i] = (4 + random(10))
        }
    }
}
