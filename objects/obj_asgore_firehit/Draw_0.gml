if (con < 3)
{
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, image_blend, 1)
    draw_sprite_ext(spr_asgore_bface, global.faceemotion, (x + 138), (y - 12), 2, 2, 0, c_white, 1)
}
if (con == 1)
{
    if (onoff == 0)
        onoff = 1
    else
        onoff = 0
    if (onoff == 0)
        draw_sprite_ext(spr_torielflame, 0, (x + 360), (y + 100), 2, 2, 0, image_blend, 1)
    firetimer += 1
    if (firetimer > 40)
    {
        snd_play(snd_noise)
        kk = 0
        firetimer = 0
        con = 1.5
        alarm[4] = 40
    }
}
if (con == 1.5)
{
    global.faceemotion = 3
    kk += 1
    draw_sprite_ext(spr_torielflame, floor((kk / 4)), ((x + 360) - (firetimer * 10)), (y + 100), 2, 2, 0, image_blend, 1)
}
if (con == 2.5)
    con = 2
if (con == 2)
{
    firetimer += 1
    draw_sprite_ext(spr_torielflame, floor((firetimer / 4)), ((x + 360) - (firetimer * 20)), (y + 100), 2, 2, 0, image_blend, 1)
    if (firetimer > 9)
    {
        snd_play(snd_damage)
        con = 3
        alarm[4] = 120
    }
}
if (con == 3)
{
    hspeed = -20
    vspeed = -4
    gravity = 10
    gravity_direction = 270
    image_angle += 3
    draw_sprite_ext(spr_asgore_hit, image_index, x, y, 2, 2, image_angle, image_blend, 1)
}
if (con == 4)
    instance_destroy()
