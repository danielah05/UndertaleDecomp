flash += 1
if (flash > 2)
    flash = false
xx = lengthdir_x(120, (image_angle - 90))
yy = lengthdir_y(120, (image_angle - 90))
l_timer -= 1
if (l_timer > 0)
{
    if (caster_is_playing(sfx_t) == false)
        caster_loop(sfx_t, 1, 1)
    draw_set_color(c_red)
    if (flash == true)
        draw_set_color(c_orange)
    if (flash == 2)
        draw_set_color(c_yellow)
    if (type == 0)
    {
        xxx = lengthdir_x(600, (image_angle - 90))
        yyy = lengthdir_y(600, (image_angle - 90))
        draw_line((x + xx), (y + yy), (x + xxx), (y + yyy))
    }
    if (type == 1)
    {
        xxx = lengthdir_x(600, (image_angle - 104))
        yyy = lengthdir_y(600, (image_angle - 104))
        draw_line((x + xx), (y + yy), (x + xxx), (y + yyy))
        xxx = lengthdir_x(600, (image_angle - 90))
        yyy = lengthdir_y(600, (image_angle - 90))
        draw_line((x + xx), (y + yy), (x + xxx), (y + yyy))
        xxx = lengthdir_x(600, (image_angle - 77))
        yyy = lengthdir_y(600, (image_angle - 77))
        draw_line((x + xx), (y + yy), (x + xxx), (y + yyy))
    }
    if (type == 2)
    {
        xxx = lengthdir_x(600, (image_angle - 110))
        yyy = lengthdir_y(600, (image_angle - 110))
        draw_line((x + xx), (y + yy), (x + xxx), (y + yyy))
        xxx = lengthdir_x(600, (image_angle - 96))
        yyy = lengthdir_y(600, (image_angle - 96))
        draw_line((x + xx), (y + yy), (x + xxx), (y + yyy))
        xxx = lengthdir_x(600, (image_angle - 84))
        yyy = lengthdir_y(600, (image_angle - 84))
        draw_line((x + xx), (y + yy), (x + xxx), (y + yyy))
        xxx = lengthdir_x(600, (image_angle - 70))
        yyy = lengthdir_y(600, (image_angle - 70))
        draw_line((x + xx), (y + yy), (x + xxx), (y + yyy))
    }
}
else if caster_is_playing(sfx_t)
    caster_stop(sfx_t)
if (meter == 1)
{
    metercounter += 1
    for (i = 0; i < 7; i += 1)
    {
        if (metercounter > i)
        {
            mcolor = make_color_hsv((((metercounter * 12) - (i * 24)) % 255), 180, 255)
            draw_sprite_ext(spr_asriel_gunarm_meter, i, x, y, image_xscale, image_yscale, image_angle, mcolor, 1)
        }
    }
}
if (blast == 1)
{
    if (bt > 4)
    {
        view_xview_set(0, (choose(1, -1) * random(3)))
        view_yview_set(0, (choose(1, -1) * random(3)))
    }
    else
    {
        view_xview_set(0, 0)
        view_yview_set(0, 0)
    }
    if (image_index == 5)
        image_index = 4
    else
        image_index = 5
    metercounter -= 1.25
    x = ((thisx + random(6)) - random(6))
    y = ((thisy - random(15)) - 16)
    king.x = (((x - relx) + random(3)) - random(3))
    king.y = (((y - rely) + random(8)) + 12)
    xx = lengthdir_x(115, (image_angle - 90))
    yy = lengthdir_y(115, (image_angle - 90))
    xxx = lengthdir_x(600, (image_angle - 90))
    yyy = lengthdir_y(600, (image_angle - 90))
    mcolor1 = make_color_hsv(((btimer * 18) % 255), 180, 255)
    mcolor2 = make_color_hsv((((btimer * 18) + 60) % 255), 180, 255)
    draw_line_width_color((x + xx), (y + yy), (x + xxx), (y + yyy), bt, mcolor1, mcolor2)
    xxa = lengthdir_x(90, (image_angle - 90))
    yya = lengthdir_y(90, (image_angle - 90))
    xxb = lengthdir_x(100, (image_angle - 90))
    yyb = lengthdir_y(100, (image_angle - 90))
    draw_line_width_color((x + xx), (y + yy), (x + xxa), (y + yya), (bt / 2), mcolor1, mcolor2)
    draw_line_width_color((x + xx), (y + yy), (x + xxb), (y + yyb), (bt / 1.5), mcolor1, mcolor2)
    nx_factor = lengthdir_x(1, image_angle)
    ny_factor = lengthdir_y(1, image_angle)
    if (col_o == 1)
    {
        for (cl = 0; cl < 4; cl += 1)
        {
            if collision_line(((x + xx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y + yy) - (((ny_factor * bt) / 2) * (cl / 4))), ((x + xxx) - (((nx_factor * bt) / 2) * (cl / 4))), ((y + yyy) - (((ny_factor * bt) / 2) * (cl / 4))), obj_heart, false, true)
                event_user(7)
        }
        for (cl = 0; cl < 4; cl += 1)
        {
            if collision_line(((x + xx) + (((nx_factor * bt) / 2) * (cl / 4))), ((y + yy) + (((ny_factor * bt) / 2) * (cl / 4))), ((x + xxx) + (((nx_factor * bt) / 2) * (cl / 4))), ((y + yyy) + (((ny_factor * bt) / 2) * (cl / 4))), obj_heart, false, true)
                event_user(7)
        }
    }
    if (col_o == 0)
        col_o = 1
    else
        col_o = 0
    btimer += 1
    if (btimer > 15)
    {
        bt -= 3
        if (bt < 3)
        {
            bt = 0
            blast = 0
            unhinge = 0
            meter = 0
        }
    }
}
if (unhinge == 1)
{
    if (image_index >= 5)
    {
        image_index = 5
        image_speed = 0
    }
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
