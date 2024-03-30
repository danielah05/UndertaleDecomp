draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, image_alpha)
if (con == 1)
    sprite_index = spr_ua_hold
if (con == 3)
{
    snd_play(snd_noise)
    sprite_index = spr_ua_lift1
    con = 4
    alarm[4] = 3
}
if (con == 5)
{
    sprite_index = spr_ua_lift2
    con = 6
    alarm[4] = 70
}
if (con == 7)
{
    sprite_index = spr_ua_lift1
    con = 8
    alarm[4] = 10
}
if (con == 9)
{
    snd_play(snd_arrow)
    vspeed = -15
    gravity = 2
    sprite_index = spr_ua_lift2
    con = 10
}
if (con == 10)
{
    if (vspeed >= -12)
    {
        sprite_index = spr_ua_throw
        instance_create((x + 70), (y + 30), obj_alphys_fly)
        con = 11
    }
}
if (con == 11)
{
    if (y > (ystart - 2))
    {
        y = ystart
        gravity = 0
        vspeed = 0
        con = 12
    }
}
