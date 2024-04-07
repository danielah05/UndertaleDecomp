if (instance_exists(OBJ_WRITER) == false)
{
    obj_papyrusboss.truefight = 1
    with (blcon)
        instance_destroy()
    caster_loop(global.batmusic, 0.8, 1)
    global.turntimer = 2
    instance_destroy()
    global.msg[0] = scr_gettext("obj_blueattackgen_60")
    obj_papyrusboss.dontcancel = 0
    return;
}
alarm[6] = 2
