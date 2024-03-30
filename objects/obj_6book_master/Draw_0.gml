for (i = 0; i < 6; i += 1)
{
    draw_sprite_ext(spr_6book, image_index, 100, ((-170 + (170 * i)) + booky), 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_6book, image_index, 540, ((170 * i) + booky2), -2, -2, 0, c_white, 1)
}
booky += 4
booky2 -= 4
if (booky > 170)
    booky -= 170
if (booky2 < -170)
    booky2 += 170
if (con > 0 && con < 3)
{
    image_alpha -= 0.02
    draw_set_color(c_white)
    ossafe_fill_rectangle(4, 4, 140, 230)
    draw_set_color(c_black)
    ossafe_fill_rectangle(8, 8, 136, 226)
    draw_set_color(c_white)
    scr_setfont(fnt_maintext)
    global.typer = 113
    global.msg[0] = scr_gettext("obj_6book_master_384")
    global.msg[1] = scr_gettext("obj_6book_master_385")
    if (!instance_exists(obj_flowey_writer))
        instance_create(14, 4, obj_flowey_writer)
}
if (con == 2)
{
    with (obj_flowey_master)
        pd = 1
    type = 1
    with (obj_6book_wordbullet)
        event_user(5)
    con = 2.1
    alarm[4] = 50
}
if (con == 3)
{
    if (global.soul_rescue != 4)
    {
        global.soul_rescue = 4
        ossafe_ini_open("undertale.ini")
        ini_write_real("FFFFF", "P", 5)
        ossafe_ini_close()
        ossafe_savedata_save()
    }
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
    with (obj_6book_wordbullet)
        event_user(4)
    con = 3
}
if (obj_vsflowey_heart.x < 245)
    obj_vsflowey_heart.x = 245
if (obj_vsflowey_heart.x > 382)
    obj_vsflowey_heart.x = 382
if (obj_vsflowey_heart.y < 138)
    obj_vsflowey_heart.y = 138
