draw_sprite(sprite_index, image_index, x, y)
draw_set_color(c_black)
draw_line((x + 4), (y - 1), (x + 4), -2)
draw_set_color(c_white)
draw_line((x + 5), (y - 1), (x + 5), -2)
draw_set_color(c_black)
draw_line((x + 6), (y - 1), (x + 6), -2)
if (obj_mainchara.x > (x - 50) && global.interact == 0)
{
    vspeed = -3
    image_speed = 0.25
}
if (y < -30)
    instance_destroy()
