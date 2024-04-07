if (global.plot == 0)
{
    other.x = other.xprevious
    other.y = other.yprevious
    global.interact = 1
    if (alter == 0)
    {
        ossafe_ini_open("undertale.ini")
        g = ini_read_real("Flowey", "Met1", 0)
        truename = ini_read_real("Flowey", "truename", 0)
        IK = ini_read_real("Flowey", "IK", 0)
        NK = ini_read_real("Flowey", "NK", 0)
        global.currentsong = caster_load("music/flowey.ogg")
        caster_loop(global.currentsong, 1, 1)
        global.typer = 9
        global.facechoice = 2
        global.faceemotion = 0
        global.msc = 200
        spec = 0
        if (g == 1)
        {
            global.msc = 0
            global.msg[0] = scr_gettext("obj_floweytrigger_316")
            global.msg[1] = scr_gettext("obj_floweytrigger_317")
            global.msg[2] = scr_gettext("obj_floweytrigger_318")
            global.msg[3] = scr_gettext("obj_floweytrigger_319")
            global.msg[4] = scr_gettext("obj_floweytrigger_320")
            global.msg[5] = scr_gettext("obj_floweytrigger_321")
            global.msg[6] = scr_gettext("obj_floweytrigger_322")
        }
        if (g > 1)
        {
            global.msc = 0
            global.msg[0] = scr_gettext("obj_floweytrigger_327")
        }
        conversation = 1
        if (NK > 0 || IK > 0 || truename > 0)
            spec = 1
        if (spec == 1)
        {
            global.msc = 0
            ini_write_real("Flowey", "Alter", 1)
            global.msg[0] = scr_gettext("obj_floweytrigger_338")
            if (truename == 1)
            {
                global.msg[0] = scr_gettext("obj_floweytrigger_342")
                global.msg[1] = scr_gettext("obj_floweytrigger_343")
                global.msg[2] = scr_gettext("obj_floweytrigger_344")
            }
            if (IK > 0)
            {
                global.msg[0] = scr_gettext("obj_floweytrigger_348")
                global.msg[1] = scr_gettext("obj_floweytrigger_349")
                global.msg[2] = scr_gettext("obj_floweytrigger_350")
                global.msg[3] = scr_gettext("obj_floweytrigger_351")
                global.msg[4] = scr_gettext("obj_floweytrigger_352")
                global.msg[5] = scr_gettext("obj_floweytrigger_353")
            }
            if (NK > 0)
            {
                global.msg[0] = scr_gettext("obj_floweytrigger_357")
                global.msg[1] = scr_gettext("obj_floweytrigger_358")
                global.msg[2] = scr_gettext("obj_floweytrigger_359")
                global.msg[3] = scr_gettext("obj_floweytrigger_360")
                global.msg[4] = scr_gettext("obj_floweytrigger_361")
                global.msg[5] = scr_gettext("obj_floweytrigger_362")
                global.msg[6] = scr_gettext("obj_floweytrigger_363")
            }
            conversation = 19
            alarm[4] = 5
        }
        ini_write_real("Flowey", "Met1", (g + 1))
        ossafe_ini_close()
        ossafe_savedata_save()
        if (instance_exists(obj_dialoguer) == false)
            instance_create(0, 0, obj_dialoguer)
    }
    else
    {
        global.plot = 1
        conversation = 23
    }
}
