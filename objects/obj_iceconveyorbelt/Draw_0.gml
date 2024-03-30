draw_sprite(spr_silo2, 0, (obj_silo1.x + 58), (obj_silo1.y + 68))
draw_sprite(sprite_index, image_index, x, y)
if (stage == 1)
{
    draw_sprite(spr_iceblock, 0, (x + icex), (y - 30))
    icex += 0.5
}
