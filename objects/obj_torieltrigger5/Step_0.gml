if (conversation == 1 && instance_exists(OBJ_WRITER) == false)
{
    global.interact = 1
    conversation = 2
    with (toriel)
        path_start(path_torielwalk19, 3, path_action_stop, 1)
    fademusicout = 1
}
if instance_exists(obj_toroverworld3)
{
    if (conversation == 2 && obj_toroverworld3.path_position == 1)
    {
        toriel.sprite_index = spr_toriel_d_phone
        toriel.phone = 1
        snd_play(snd_phone)
        alarm[4] = 30
        conversation = 3
    }
}
if instance_exists(obj_toroverworld3)
{
    if (conversation == 4 && toriel.path_position == 1)
    {
        with (toriel)
            path_end()
        conversation = 5
        caster_pause(global.currentsong)
        torielsong = caster_load("music/toriel.ogg")
        caster_loop(torielsong, 0.7, 0.86)
        global.msg[0] = scr_gettext("obj_torieltrigger5_185")
        if (global.hp == global.maxhp)
            global.msg[1] = scr_gettext("obj_torieltrigger5_186")
        if (global.hp < global.maxhp)
            global.msg[1] = scr_gettext("obj_torieltrigger5_187")
        if (global.hp < 4)
            global.msg[1] = scr_gettext("obj_torieltrigger5_189")
        global.msg[2] = scr_gettext("obj_torieltrigger5_190")
        global.msg[3] = scr_gettext("obj_torieltrigger5_191")
        global.msg[4] = scr_gettext("obj_torieltrigger5_192")
        global.msg[5] = scr_gettext("obj_torieltrigger5_193")
        global.msg[6] = scr_gettext("obj_torieltrigger5_194")
        global.hp = global.maxhp
        instance_create(0, 0, obj_dialoguer)
    }
}
if instance_exists(obj_toroverworld3)
{
    if (conversation == 5 && instance_exists(OBJ_WRITER) == false)
    {
        conversation = 6
        with (obj_toroverworld3)
            path_start(path_torielwalk19_4, 4, path_action_stop, 0)
        caster_resume(global.currentsong)
        fademusicout = 3
        global.plot = 17
        torvolume = 0.8
    }
}
if (fademusicout == 1)
{
    if (volume > 0)
        volume -= 0.02
    caster_set_volume(global.currentsong, volume)
    if (volume < 0.02)
        fademusicout = 2
}
if (fademusicout == 3)
{
    torvolume -= 0.04
    if (volume < 0.9)
        volume += 0.06
    caster_set_volume(torielsong, torvolume)
    caster_set_volume(global.currentsong, volume)
    if (torvolume < 0.1)
    {
        caster_free(torielsong)
        global.interact = 0
        instance_destroy()
    }
}
