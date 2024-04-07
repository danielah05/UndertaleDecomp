if (global.plot >= 24 && jump < 5)
{
    global.typer = 31
    global.faceemotion = 0
    global.facechoice = 0
    global.msc = 0
    global.msg[0] = scr_gettext("obj_asrielbed_87")
    global.msg[1] = scr_gettext("obj_asrielbed_88")
    global.msg[2] = scr_gettext("obj_asrielbed_89")
    if (FL_TruePacifist == true)
    {
        global.typer = 5
        global.msg[0] = scr_gettext("obj_asrielbed_93")
        global.msg[1] = scr_gettext("obj_asrielbed_94")
    }
    obj_asriellamp.idealvolume[0] = 0
    obj_asriellamp.idealvolume[1] = 0
    instance_create(0, 0, obj_dialoguer)
    with (obj_dialoguer)
        depth = -999999
    if instance_exists(OBJ_WRITER)
    {
        with (OBJ_WRITER)
            depth = -9999999
    }
    jump = 5
}
if (jump == 5)
    alarm[2] = 2
if (instance_exists(obj_dialoguer) == false)
{
    jump = 6
    background_visible_set(1, false)
    background_visible_set(0, true)
    if (global.plot < 20)
        background_visible_set(2, true)
    global.facing = Direction.Left
    obj_mainchara.x = 200
    obj_mainchara.y = 104
    global.hp = global.maxhp
    if instance_exists(obj_unfader)
    {
        with (obj_unfader)
            instance_destroy()
    }
    instance_create(0, 0, obj_fader)
    obj_asriellamp.idealvolume[0] = 0
    obj_asriellamp.idealvolume[1] = 1
    if (FL_GotBScotchPie == 0 && global.plot < 20)
    {
        FL_GotBScotchPie = 1
        instance_create(142, 132, obj_pie_pickup)
    }
    alarm[3] = 60
}
