if (flowey == 1)
{
    scr_textskip()
    draw_sprite_ext(spr_floweynice, 0, ((floweyx + random(shake)) - random(shake)), ((floweyy + random(shake)) - random(shake)), 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_floweyface_l3, global.faceemotion, ((floweyx + random(shake)) - random(shake)), ((floweyy + random(shake)) - random(shake)), 2, 2, 0, c_white, image_alpha)
}
