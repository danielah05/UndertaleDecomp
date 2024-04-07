draw_sprite(sprite_index, image_index, x, y)
anim += 1
if (type == 0)
{
    if (red == 0)
        draw_sprite(spr_levereye_red, 0, (x + 6), (y + 16))
    if (red == 1)
        draw_sprite(spr_levereye_red_bright, floor((anim / 4)), (x + 6), (y + 16))
}
if (type == 1)
{
    if (blu == 0)
        draw_sprite(spr_levereye_blue, 0, (x + 6), (y + 16))
    if (blu == 1)
        draw_sprite(spr_levereye_blue_bright, floor((anim / 4)), (x + 6), (y + 16))
}
if (type == 2)
{
    if (gre == 0)
        draw_sprite(spr_levereye_green, 0, (x + 6), (y + 16))
    if (gre == 1)
        draw_sprite(spr_levereye_green_bright, floor((anim / 4)), (x + 6), (y + 16))
}
if (type == 3)
{
    if (yel == 0)
        draw_sprite(spr_levereye_yellow, 0, (x + 6), (y + 16))
    if (yel == 1)
        draw_sprite(spr_levereye_yellow_bright, floor((anim / 4)), (x + 6), (y + 16))
}
