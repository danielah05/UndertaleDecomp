if (con == 1)
{
    caster_free(all)
    snd_play(snd_phone)
    global.typer = 21
    global.msc = 0
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_labelevator_b_122")
    global.msg[1] = scr_gettext("obj_labelevator_b_123")
    instance_create(0, 0, obj_dialoguer)
    con = 2
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 79
    global.msg[0] = scr_gettext("obj_labelevator_b_131")
    global.msg[1] = scr_gettext("obj_labelevator_b_132")
    global.msg[2] = scr_gettext("obj_labelevator_b_133")
    global.msg[3] = scr_gettext("obj_labelevator_b_134")
    global.msg[4] = scr_gettext("obj_labelevator_b_135")
    global.msg[5] = scr_gettext("obj_labelevator_b_136")
    instance_create(0, 0, obj_dialoguer)
    con = 3
}
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
    rect = 1
    snd_play(snd_spearappear)
    con = 4
    alarm[4] = 9
}
if (con == 5)
{
    snd_play(snd_impact)
    con = 6
    alarm[4] = 30
}
if (con == 7)
{
    global.facing = Direction.Down
    la = instance_create(0, 0, obj_labelevator_a)
    with (la)
        blacktime = 0
    con = 8
}
if (rect == 1)
{
    if (rectaur < 20)
        rectaur += 2
    draw_set_color(c_black)
    ossafe_fill_rectangle(140, 180, (140 + rectaur), 250)
    ossafe_fill_rectangle(180, 180, (180 - rectaur), 250)
    if (room == room_truelab_castle_elevator)
    {
        ossafe_fill_rectangle(0, 120, 99, (120 + rectaur))
        ossafe_fill_rectangle(0, 160, 99, (160 - rectaur))
    }
}
