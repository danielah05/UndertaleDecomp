if (con == -1)
{
    image_alpha += 0.05
    if (image_alpha >= 1)
    {
        con = 0.1
        alarm[4] = 20
    }
}
if (con < 3)
{
    draw_sprite_ext(spr_hg_leftovers, 0, x, (y + (facey / 6)), 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_hg_horns, 0, x, (y - (facey / 2)), 2, 2, 0, c_white, image_alpha)
    draw_sprite_ext(spr_hg_mainface, 0, (x + 88), ((y + 72) + facey), 2, (2 + facescale), 0, c_white, image_alpha)
    draw_sprite_ext(spr_hg_jaws, 0, (x + 104), ((y + 248) - (facey / 2)), 2, 2, 0, c_white, image_alpha)
}
if (con == 1.1)
{
    caster_play(gl, 0.8, 1)
    con = 1
}
if (con == 1)
{
    facey -= 3.5
    facescale -= 0.2
    siner = 0
    if (facescale < -1)
    {
        con = 1.9
        alarm[4] = 75
        alarm[6] = 100
    }
}
if (con == 1.9)
{
    siner += 1
    facey += (sin((siner / 1.5)) * 8)
    facescale += (sin((siner / 1.5)) * 0.2)
}
if (con == 2.9)
{
    caster_play(gc, 1, 1)
    con = 3
}
if (con == 3)
{
    if (cc < 80)
        cc += 0.5
    sprite_index = spr_hg_laughing
    if (image_alpha > 0.14)
        image_alpha -= 0.02
    scr_fx_waver_scanline(bb, cc, dd)
    draw_set_color(c_white)
    draw_set_alpha((1 - image_alpha))
    for (i = 0; i < 5; i += 1)
        draw_line_width_color((((room_width / 2) + random(10)) - random(10)), (((room_height / 2) + random(10)) - random(10)), random(room_width), room_height, 2, c_white, c_gray)
    for (i = 0; i < 5; i += 1)
        draw_line_width_color((((room_width / 2) + random(10)) - random(10)), (((room_height / 2) + random(10)) - random(10)), random(room_width), 0, 2, c_white, c_gray)
    for (i = 0; i < 5; i += 1)
        draw_line_width_color((((room_width / 2) + random(10)) - random(10)), (((room_height / 2) + random(10)) - random(10)), 0, random(room_height), 2, c_white, c_gray)
    for (i = 0; i < 5; i += 1)
        draw_line_width_color((((room_width / 2) + random(10)) - random(10)), (((room_height / 2) + random(10)) - random(10)), room_width, random(room_height), 2, c_white, c_gray)
    draw_set_alpha(1)
    draw_set_circle_precision(16)
    rad = ((c_counter - 180) / 1.5)
    if (rad < 20)
        rad = 20
    draw_set_color(c_green)
    draw_circle(320, 240, rad, 1)
    if (c_counter < 295)
    {
        if collision_circle(320, 240, (rad - 5), obj_heart, 0, 1)
            event_user(7)
    }
    if (c_counter < 180)
    {
        with (obj_heart)
        {
            pd = point_direction(x, y, 312, 232)
            ldrx = lengthdir_x(1, pd)
            ldry = lengthdir_y(1, pd)
            x += ldrx
            y += ldry
        }
    }
    if (c_counter > 180)
    {
        with (obj_heart)
        {
            pd = point_direction(x, y, 312, 232)
            ldrx = lengthdir_x(2, pd)
            ldry = lengthdir_y(2, pd)
            x += ldrx
            y += ldry
        }
    }
    c_counter += 1
    if (c_counter > 180)
    {
        draw_set_color(c_white)
        draw_set_alpha(((c_counter - 180) / 60))
        draw_circle((room_width / 2), (room_height / 2), ((c_counter - 180) / 1.5), 0)
        draw_set_alpha(((c_counter - 210) / 80))
        ossafe_fill_rectangle(-10, -10, 999, 999)
        draw_set_alpha(1)
        if (c_counter > 275)
            obj_heart.image_alpha -= 0.05
        if (c_counter > 320)
        {
            caster_free(gl)
            caster_free(gc)
            if instance_exists(obj_asriel_body)
            {
                obj_asriel_body.gonercon = 10
                instance_destroy()
            }
        }
    }
}
if (obj_heart.x < 0)
    obj_heart.x = 0
if (obj_heart.x > (room_width - 16))
    obj_heart.x = (room_width - 16)
if (obj_heart.y < 0)
    obj_heart.y = 0
if (obj_heart.y > (room_height - 16))
    obj_heart.y = (room_height - 16)
