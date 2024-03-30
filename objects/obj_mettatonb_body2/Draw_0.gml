sinvalue = 0
if (hspeed == 0)
{
    sinvalue += (sin((siner / 3)) * 2)
    image_angle += sinvalue
}
if (behind == 0)
{
    draw_sprite_ext(sprite_index, image_index, ((x + sinvalue) + (random((shaker * 2)) - shaker)), (y + (random((shaker * 2)) - shaker)), image_xscale, image_yscale, image_angle, c_white, 1)
    draw_sprite_ext(arms, (siner / 6), (x + sinvalue), (y - (sin((siner / 4)) * 5)), image_xscale, image_yscale, image_angle, c_white, 1)
}
if (behind == 1)
{
    draw_sprite_ext(spr_mettatonb_behind, image_index, ((x + sinvalue) + (random((shaker * 2)) - shaker)), (y + (random((shaker * 2)) - shaker)), image_xscale, image_yscale, image_angle, c_white, 1)
    draw_sprite_ext(spr_mettatonb_arms1_reverse, (siner / 6), (x + sinvalue), (y - (sin((siner / 4)) * 5)), image_xscale, image_yscale, image_angle, c_white, 1)
}
if (behind == 2)
{
    sineron = 0
    draw_sprite_ext(spr_mettatonb_behind_on, image_index, ((x + sinvalue) + (random((shaker * 2)) - shaker)), (y + (random((shaker * 2)) - shaker)), image_xscale, image_yscale, image_angle, c_white, 1)
    draw_sprite_ext(spr_mettatonb_arms1_reverse, (siner / 6), (x + sinvalue), (y - (sin((siner / 4)) * 5)), image_xscale, image_yscale, image_angle, c_white, 1)
}
if (behind == 3)
{
    sineron = 0
    siner += (1 + trueanim)
    shaker = trueanim
    sinvalue *= trueanim
    image_angle += (sinvalue * 1.4)
    draw_sprite_ext(spr_mettatonb_nuts, (siner / 3), ((x + sinvalue) + (random((shaker * 2)) - shaker)), (y + (random((shaker * 2)) - shaker)), image_xscale, image_yscale, image_angle, c_white, 1)
    draw_sprite_ext(spr_mettatonb_arms5, (siner / 6), (x + sinvalue), (y - (sin((siner / 4)) * 5)), image_xscale, image_yscale, image_angle, c_white, 1)
}
if (sineron == 1)
    siner += 1
