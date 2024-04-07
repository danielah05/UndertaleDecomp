siner += 1
draw_sprite_ext(spr_doodleleg, floor((siner / 6)), (x + 26), (y + 84), 2, 2, 0, c_white, image_alpha)
draw_sprite_ext(spr_doodlebug, floor((siner / 6)), x, (y - (sin((siner / 16)) * 4)), 2, 2, 0, c_white, image_alpha)
draw_sprite_ext(spr_doodlearm, floor((siner / 6)), (x - 16), ((y + 50) + (sin((siner / 16)) * 10)), 2, 2, 0, c_white, image_alpha)
draw_sprite_ext(spr_doodlearm, floor((siner / 6)), (x + 106), ((y + 50) + (sin((siner / 16)) * 10)), -2, 2, 0, c_white, image_alpha)
if (boat >= 1)
    draw_sprite_ext(spr_doodleboat, floor((siner / 6)), x, ((y - (sin((siner / 16)) * 4)) + 20), 2, 2, 0, c_white, image_alpha)
if (boat == 2)
{
    if (x < 320)
        hspeed = -5
    else
        hspeed = 5
}
if (fight == 1)
{
    if (instance_number(obj_doodlebug_body) > 1)
    {
        if (f_timer == 0)
            event_user(0)
        if (f_timer == 60)
        {
            event_user(0)
            f_timer = -1
            fight = 0
        }
    }
    else
    {
        if (f_timer == 0)
            event_user(0)
        if (f_timer == 10)
            event_user(0)
        if (f_timer == 20)
        {
            event_user(0)
            f_timer = -1
            fight = 0
        }
    }
    f_timer += 1
}
if (x < -120)
    instance_destroy()
if (x > 800)
    instance_destroy()
