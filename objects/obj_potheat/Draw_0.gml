draw_sprite_ext(spr_rotdial, 0, 169, 45, 1, 1, ((-stir) * 6), c_white, 1)
draw_set_color(c_white)
ossafe_fill_rectangle((view_xview_get(view_current) + 16), (view_yview_get(view_current) + 6), (view_xview_get(view_current) + 304), (view_yview_get(view_current) + 32))
draw_set_color(c_black)
ossafe_fill_rectangle((view_xview_get(view_current) + 19), (view_yview_get(view_current) + 9), (view_xview_get(view_current) + 301), (view_yview_get(view_current) + 29))
scr_setfont(fnt_maintext)
draw_set_color(c_white)
scr_drawtext_icons(30, 11, scr_gettext("obj_potheat_73"))
if obj_time.right
{
    stir += 1
    jingle += 1
    if (jingle > 10)
    {
        caster_play(rot, 0.5, 1)
        jingle = 0
    }
}
if obj_time.left
    wrong = 1
stime += 1
if (wrong == 1 && wrongval == 0 && instance_exists(OBJ_WRITER) == false)
{
    caster_set_pitch(fire, 0.8)
    caster_set_volume(fire, 0.55)
    wrongval = 1
    global.msc = 0
    global.facechoice = 5
    global.typer = 37
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_potheat_108")
    global.msg[1] = scr_gettext("obj_potheat_109")
    gg = instance_create(0, 0, obj_dialoguer)
    gg.side = 1
}
if (stir > 50 && sval == 0)
{
    caster_set_pitch(fire, 0.9)
    caster_set_volume(fire, 0.6)
    with (pot)
        event_user(0)
    sval += 1
}
if (stir > 100 && sval == 1 && instance_exists(OBJ_WRITER) == false)
{
    caster_set_pitch(fire, 1)
    caster_set_volume(fire, 0.66)
    with (pot)
        event_user(0)
    sval = 2
    global.msc = 0
    global.facechoice = 5
    global.typer = 37
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_potheat_132")
    gg = instance_create(0, 0, obj_dialoguer)
    gg.side = 1
}
if (stir > 150 && sval == 2)
{
    caster_set_pitch(fire, 1.1)
    caster_set_volume(fire, 0.72)
    with (pot)
        event_user(0)
    sval += 1
}
if (stir > 200 && sval == 3 && instance_exists(OBJ_WRITER) == false)
{
    caster_set_pitch(fire, 1.2)
    caster_set_volume(fire, 0.78)
    with (pot)
        event_user(0)
    sval = 4
    global.msc = 0
    global.facechoice = 5
    global.typer = 37
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_potheat_155")
    gg = instance_create(0, 0, obj_dialoguer)
    gg.side = 1
}
if (stir > 250 && sval == 4)
{
    caster_set_pitch(fire, 1.3)
    caster_set_volume(fire, 0.83)
    with (pot)
        event_user(0)
    sval += 1
}
if (stir > 300 && sval == 5 && instance_exists(OBJ_WRITER) == false)
{
    caster_set_pitch(fire, 1.4)
    caster_set_volume(fire, 0.87)
    with (pot)
        event_user(0)
    sval = 6
    global.msc = 0
    global.facechoice = 5
    global.typer = 37
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_potheat_179")
    gg = instance_create(0, 0, obj_dialoguer)
    gg.side = 1
}
if (stir > 360 && sval < 99 && instance_exists(OBJ_WRITER) == false)
{
    stir = 360
    caster_stop(global.currentsong)
    caster_set_pitch(fire, 1.7)
    caster_set_volume(fire, 0.95)
    with (pot)
        event_user(0)
    sval = 99
    global.msc = 0
    global.facechoice = 5
    global.typer = 37
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_potheat_196")
    gg = instance_create(0, 0, obj_dialoguer)
    gg.side = 1
    obj_undynedate_inside.con = 250
    instance_destroy()
}
if (stime > 500 && sval < 99 && instance_exists(OBJ_WRITER) == false)
{
    sval = 101
    global.msc = 0
    global.facechoice = 5
    global.typer = 37
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_potheat_211")
    gg = instance_create(0, 0, obj_dialoguer)
    gg.side = 1
}
if (sval == 101 && instance_exists(OBJ_WRITER) == false)
{
    caster_stop(global.currentsong)
    caster_set_pitch(fire, 1.7)
    caster_set_volume(fire, 0.95)
    sval = 102
    while (pot.level < 8)
    {
        with (pot)
            event_user(0)
    }
    global.msc = 0
    global.facechoice = 5
    global.typer = 37
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_potheat_232")
    gg = instance_create(0, 0, obj_dialoguer)
    gg.side = 1
    obj_undynedate_inside.con = 250
    instance_destroy()
}
