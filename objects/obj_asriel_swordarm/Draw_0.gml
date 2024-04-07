if (start == 1)
{
    if (image_alpha < 1)
        image_alpha += 0.2
    else
        start = 0
}
if (dontdraw == 0)
    draw_sprite_ext(sprite_index, image_index, ((x + random(shake)) - random(shake)), ((y + random(shake)) - random(shake)), image_xscale, 2, image_angle, image_blend, image_alpha)
timer += 1
if (timer == 5)
    con = 1
if (con == 1)
{
    s_offset -= 1
    if (flip == 0)
    {
        if (o_o == 1)
            draw_sprite_ext(spr_asriel_sword, image_index, ((x - s_offset) - 22), (y - 148), image_xscale, 2, image_angle, image_blend, image_alpha)
        if (o_o == 0)
            draw_sprite_ext(spr_asriel_sword, image_index, ((x + s_offset) - 22), (y - 148), image_xscale, 2, image_angle, image_blend, image_alpha)
    }
    if (flip == 1)
    {
        if (o_o == 1)
            draw_sprite_ext(spr_asriel_sword, image_index, ((x - s_offset) + 22), (y - 148), image_xscale, 2, image_angle, image_blend, image_alpha)
        if (o_o == 0)
            draw_sprite_ext(spr_asriel_sword, image_index, ((x + s_offset) + 22), (y - 148), image_xscale, 2, image_angle, image_blend, image_alpha)
    }
    if (o_o == 0)
        o_o = 1
    else
        o_o = 0
    if (s_offset <= 1)
    {
        with (sm)
            event_user(8)
        sprite_index = spr_asriel_swordarm
        con = 2
        timer = 999
        timer = 999
        if (flip == 0)
            sm.alarm[5] = 14
    }
}
if (twinkle == 0)
{
    if (h_mode == 0)
    {
        if (timer == 107)
        {
            with (sm)
                event_user(5)
        }
        if (timer > 105 && timer < 116)
        {
            y -= 0.5
            if (flip == 0)
            {
                king.headrot += 4
                with (sm)
                    event_user(2)
                image_angle += 1
            }
            if (flip == 1)
            {
                king.headrot -= 4
                with (sm)
                    event_user(3)
                image_angle -= 1
            }
        }
    }
    if (h_mode == 1)
    {
        if (timer == 110)
        {
            with (sm)
                event_user(5)
        }
        if (timer > 108 && timer < 116)
        {
            y -= 0.75
            if (flip == 0)
            {
                king.headrot += 6
                with (sm)
                    event_user(2)
                image_angle += 1.5
            }
            if (flip == 1)
            {
                king.headrot -= 6
                with (sm)
                    event_user(3)
                image_angle -= 1.5
            }
        }
    }
    if (h_mode == 2)
    {
        if (timer == 113)
        {
            with (sm)
                event_user(5)
        }
        if (timer > 111 && timer < 116)
        {
            y -= 1.5
            if (flip == 0)
            {
                king.headrot += 12
                with (sm)
                    event_user(2)
                image_angle += 3
            }
            if (flip == 1)
            {
                king.headrot -= 12
                with (sm)
                    event_user(3)
                image_angle -= 3
            }
        }
    }
}
if (twinkle == 1)
{
    if (timer > 90 && timer < 105)
    {
        blazing = 1
        y -= 0.5
        if (flip == 0)
        {
            with (sm)
                event_user(9)
            image_angle += 1.5
        }
        if (flip == 1)
        {
            with (sm)
                event_user(9)
            image_angle -= 1.5
        }
    }
    if (timer > 90 && timer < 115)
        shake = 5
    if (timer == 115)
        shake = 0
    if (timer == 120)
        blazing = 0
}
if (timer == 124)
{
    with (sm)
        event_user(6)
    depth = (king.depth - 10)
    dontdraw = 1
    smear = 5
}
if (timer >= 124 && timer < 127)
{
    if (flip == 0)
        king.headrot -= 12
    if (flip == 1)
        king.headrot += 12
    dontdraw = 0
    image_angle = 0
    if (timer >= 125)
        col = 1
    sprite_index = spr_asriel_swordextend
    y += 3
}
if (timer == 125 && twinkle == 1)
{
    global.border = 6
    SCR_BORDERSETUP()
    timer = 200
    vspeed = 5
    friction = 0.5
    sprite_index = spr_asriel_swordextend_shatter
    for (i = 0; i < 4; i += 1)
        instance_create(x, ((y + 120) + (i * 35)), obj_swordtwinkle)
}
if (timer >= 127 && timer < 130)
{
    col = 0
    y += 5
    if (flip == 0)
        image_angle += 30
    if (flip == 1)
        image_angle -= 30
}
if (timer == 130)
{
    king.headrot /= 2
    depth = (king.depth + 1)
    y = ystart
    image_angle = 0
    sprite_index = spr_asriel_swordarm_half
}
if (timer == 131)
{
    king.headrot /= 2
    y = ystart
    image_angle = 0
    sprite_index = spr_asriel_swordarm
}
if (timer > 200 && twinkle == 1)
{
    if (timer > 201)
        col = 0
    image_alpha -= 0.1
    if (image_alpha <= 0)
        instance_destroy()
}
if (smear > 0)
{
    if (flip == 0)
        draw_sprite_ext(spr_asriel_swordsmear, image_index, (x - 40), (y - 168), image_xscale, 2.5, 0, image_blend, (smear / 5))
    if (flip == 1)
        draw_sprite_ext(spr_asriel_swordsmear, image_index, (x + 40), (y - 168), image_xscale, 2.5, 0, image_blend, (smear / 5))
    smear -= 1
}
if (blazing == 1)
{
    if (bl_o == 0)
        bl_o = 1
    else
        bl_o = 0
    if (bl_o == 1)
        draw_sprite_ext(spr_asriel_swordarm_power, 0, x, y, image_xscale, 2, image_angle, image_blend, image_alpha)
}
if (col == 1)
{
    if (flip == 0)
    {
        if collision_rectangle((x - 3), y, (x + 80), (y + 260), obj_heart, 0, 1)
            event_user(7)
    }
    if (flip == 1)
    {
        if collision_rectangle((x + 3), y, (x - 80), (y + 260), obj_heart, 0, 1)
            event_user(7)
    }
}
