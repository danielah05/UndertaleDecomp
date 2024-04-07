if (con == 1)
{
    with (obj_mkid_actor)
        image_speed = 0.25
    with (obj_mkid_actor)
        sprite_index = rtsprite
    global.facechoice = 0
    global.msc = 0
    global.typer = 5
    global.msg[0] = scr_gettext("obj_monsterkidtrigger4_66")
    global.msg[1] = scr_gettext("obj_monsterkidtrigger4_67")
    global.msg[2] = scr_gettext("obj_monsterkidtrigger4_68")
    global.msg[3] = scr_gettext("obj_monsterkidtrigger4_69")
    scr_regulartext()
    con = 2
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    con = 3
    FL_InteractedWithGarbageSavepoint = 1
    global.interact = 0
    instance_destroy()
}
