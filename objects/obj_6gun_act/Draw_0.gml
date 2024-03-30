draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, image_alpha)
if (con > 0 && con < 3)
{
    image_alpha -= 0.02
    draw_set_color(c_white)
    ossafe_fill_rectangle(106, 346, 534, 404)
    draw_set_color(c_black)
    ossafe_fill_rectangle(110, 350, 530, 400)
    draw_set_color(c_white)
    scr_setfont(fnt_maintext)
    global.typer = 113
    global.msg[0] = scr_gettext("obj_6gun_act_149")
    global.msg[1] = scr_gettext("obj_6gun_act_150")
    if (!instance_exists(obj_flowey_writer))
        instance_create(110, 340, obj_flowey_writer)
}
if (con == 2)
{
    type = 1
    with (obj_flowey_master)
        pd = 1
    with (obj_6gun)
        event_user(5)
    con = 2.1
    alarm[4] = 50
}
if (con == 3)
{
    if (global.soul_rescue != 6)
    {
        global.soul_rescue = 6
        ossafe_ini_open("undertale.ini")
        ini_write_real("FFFFF", "P", 7)
        ossafe_ini_close()
        ossafe_savedata_save()
    }
    with (obj_6gun_bullet)
        event_user(4)
}
if (con == 3.1)
{
    with (obj_flowey_writer)
        instance_destroy()
    snd_play(snd_break2_c)
    instance_create(0, 0, obj_6flasher)
    with (obj_flowey_master)
        caster_play(mus_saved, 0.8, 0.9)
    with (obj_flowey_bulletmaster)
        soultimer = (soulmax - 150)
    with (obj_6gun)
        event_user(4)
    con = 3
}
