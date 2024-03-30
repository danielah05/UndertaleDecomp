if (scr_monstersum() > 1)
    draw_sprite_ext(sprite_index, image_index, (global.idealborder[1] + sprite_width), y, 1, 1, 0, c_white, 1)
draw_sprite_ext(sprite_index, image_index, x, y, -1, 1, 0, c_white, 1)
if (global.turntimer < 1)
{
    global.turntimer = -1
    global.mnfight = 3
    instance_destroy()
}
