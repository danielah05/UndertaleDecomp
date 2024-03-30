dnty = ((sin((siner / 4)) * 2) * size)
dntyx = ((cos((siner / 2)) * 2) * size)
dnty2 = ((sin((siner / 3)) * 4) * size)
rt = (cos((siner / 4)) * 5)
ssx = ((sin((siner / 3)) * 3) * image_xscale)
ssy = (cos((siner / 3)) * 3)
if (halfsies == 0)
{
    draw_sprite_ext(spr_dentata_none, 0, (x + ssx), ((y + dnty) + ssy), size, size, rt, c_gray, 1)
    draw_sprite_ext(spr_dentata_tophalf, 0, ((x - dntyx) + ssx), (((y + dnty2) - (4 * size)) + ssy), size, size, rt, c_white, 1)
    draw_sprite_ext(spr_dentata_bottomhalf, 0, (x + dntyx), ((y - dnty2) + (4 * size)), size, size, rt, c_white, 1)
}
if (halfsies == 1)
{
    rt += 90
    draw_sprite_ext(spr_halfdentata_none, 0, ((x + dnty) + ssx), (y + ssy), size, size, rt, c_gray, 1)
    draw_sprite_ext(spr_halfdentata_top, 0, (((x + dnty2) - (4 * size)) + ssx), ((y - dntyx) + ssy), size, size, rt, c_white, 1)
    draw_sprite_ext(spr_halfdentata_bottom, 0, (((x - dnty2) + (4 * size)) + ssx), ((y + dntyx) + ssy), size, size, rt, c_white, 1)
}
if (halfsies == 2)
{
    rt -= 90
    draw_sprite_ext(spr_halfdentata_none, 0, ((x + dnty) + ssx), (y + ssy), size, size, rt, c_gray, 1)
    draw_sprite_ext(spr_halfdentata_top, 0, (((x - dnty2) + (4 * size)) + ssx), ((y - dntyx) + ssy), size, size, rt, c_white, 1)
    draw_sprite_ext(spr_halfdentata_bottom, 0, (((x + dnty2) - (4 * size)) + ssx), ((y + dntyx) + ssy), size, size, rt, c_white, 1)
}
siner += 1
if (maxer < 0.8)
    maxer += 0.1
size = (maxer + (sin((siner / 2)) * 0.02))
