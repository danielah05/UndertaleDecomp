draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1)
draw_set_color(c_black)
ossafe_fill_rectangle((global.idealborder[1] + 1), global.idealborder[2], (global.idealborder[1] + 100), global.idealborder[3])
if (x < ((global.idealborder[1] - sprite_width) + 20) && con == 0)
{
    nowx = x
    nowy = y
    hspeed = 0
    image_index = 0
    image_speed = 0
    con = 1
}
if (con == 1)
{
    con = 2
    alarm[5] = 60
    alarm[4] = 130
}
if (con == 3)
{
    shake = 1
    sprite_index = spr_strangeman_poseb
    con = 4
    alarm[4] = 80
}
if (con == 5)
{
    nowy += 14
    shake = 2
    sprite_index = spr_strangeman_pose
    y += 14
    con = 6
}
if (shake > 0)
{
    shake += 0.03
    x = ((nowx + random(shake)) - random(shake))
    y = ((nowy + random(shake)) - random(shake))
}
if (global.turntimer < 1)
    instance_destroy()
