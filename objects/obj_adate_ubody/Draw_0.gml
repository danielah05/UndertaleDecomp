anim += 0.2
draw_sprite_ext(spr_adate_ubody, floor(anim), x, (y + 78), 2, 2, 0, c_white, 1)
if (set == 0)
    draw_sprite_ext(spr_adate_uface, global.facechoice, x, y, 2, 2, 0, c_white, 1)
if (set == 1)
    draw_sprite_ext(spr_adate_uface_2, global.facechoice, x, y, 2, 2, 0, c_white, 1)
