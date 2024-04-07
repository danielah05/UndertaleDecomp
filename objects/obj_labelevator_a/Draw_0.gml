if (blacktime == 0)
{
    if (dt == 1)
    {
        draw_set_color(c_black)
        ossafe_fill_rectangle(-20, -20, 1010, 1010)
        draw_sprite_ext(thispic, 0, hshake, vshake, 0.5, 0.5, 0, image_blend, 1)
    }
    redsiner += (1 + rs_speed)
    if (hyperboys == 1)
        redsiner += (1 + rs_speed)
    hshake = (random(shakevalue) - random(shakevalue))
    vshake = (random(shakevalue) - random(shakevalue))
    image_blend = make_color_rgb(255, (210 + (sin((redsiner / 12)) * 45)), (210 + (sin((redsiner / 12)) * 45)))
    shakevalue += 0.008
    rs_speed += 0.01
    if (hyperboys == 1)
    {
        shakevalue += 0.008
        rs_speed += 0.01
    }
    if (shakevalue > 5)
    {
        w += 0.01
        if (hyperboys == 1)
            w += 0.01
    }
    else
        caster_set_volume(sfx, vol)
    if (w > 0)
    {
        pit += 0.01
        caster_set_pitch(sfx, pit)
        vol -= 0.01
        caster_set_volume(sfx, vol)
        if (hyperboys == 1)
        {
            pit += 0.01
            caster_set_pitch(sfx, pit)
            vol -= 0.01
            caster_set_volume(sfx, vol)
        }
        draw_set_alpha(w)
        draw_set_color(c_white)
        ossafe_fill_rectangle(-10, -10, 999, 999)
        draw_set_alpha(1)
    }
}
if (blacktime == 1)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle(-20, -20, 1010, 1010)
    w += 0.01
}
if (con == 2 && hyperboys == 0)
{
    global.msc = 0
    global.typer = 5
    global.msg[0] = scr_gettext("obj_labelevator_a_242")
    global.msg[1] = scr_gettext("obj_labelevator_a_243")
    global.msg[2] = scr_gettext("obj_labelevator_a_244")
    global.msg[3] = scr_gettext("obj_labelevator_a_245")
    var yy = 10
    if (global.language == "ja")
        yy = -2
    instance_create(40, yy, OBJ_WRITER)
    con = 3
}
if (dt == 0)
{
    thispic = sprite_create_from_screen_x(0, 0, 640, 480, false, false, 0, 0)
    dt = 1
}
