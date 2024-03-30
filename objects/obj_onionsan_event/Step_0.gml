if instance_exists(obj_mainchara)
{
    if (FL_OnionSanConvoCounter == 0)
    {
        if (obj_mainchara.x > 100 && tents == 0)
        {
            tent1 = instance_create(obj_mainchara.x, 70, obj_oniont)
            tent1.follow = 1
            tent1.type = 0
            tents = 1
            tent1.on = 2
            snd_play(snd_splash)
        }
        if (obj_mainchara.x > 210 && tents == 1)
        {
            tent2 = instance_create(obj_mainchara.x, 220, obj_oniont)
            tent2.follow = 1
            tent2.type = 1
            tent2.on = 2
            tents = 2
            snd_play(snd_splash)
        }
        if (obj_mainchara.x > 420 && tents == 2 && global.interact == 0)
        {
            global.facing = Direction.Down
            tents = 3
            con = 1
            alarm[4] = 90
            global.interact = 1
            with (tent1)
                on = 4
            with (tent2)
                on = 4
            FL_OnionSanConvoCounter = 1
            snd_play(snd_splash)
        }
    }
    if (con == 2)
    {
        with (obj_oniont)
            instance_destroy()
        FL_AnimationIndex = 0
        with (onion)
        {
            x = (obj_mainchara.x + 10)
            follow = 0
            hspeed = 0
        }
        with (onion)
            on = 1
        con = 3
        alarm[4] = 50
    }
    if (con == 4)
    {
        global.facing = Direction.Up
        with (onion)
            on = 2
        with (obj_oniont)
            on = 2
        con = 5
        alarm[4] = 150
    }
    if (con == 6)
    {
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.msg[0] = scr_gettext("obj_onionsan_event_181")
        global.msg[1] = scr_gettext("obj_onionsan_event_182")
        instance_create(0, 0, obj_dialoguer)
        con = 7
    }
    if (con == 7 && instance_exists(OBJ_WRITER))
    {
        if (OBJ_WRITER.stringno == 1)
        {
            with (obj_oniont)
                on = 4
        }
    }
    if (con == 7 && instance_exists(OBJ_WRITER) == false)
    {
        global.interact = 0
        onion.follow = 1
        onion.on = 2
        con = 8
    }
    if (FL_OnionSanConvoCounter == 1 && obj_mainchara.x > 550 && global.interact == 0)
    {
        FL_OnionSanConvoCounter = 2
        global.interact = 1
        con = 11
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.msg[0] = scr_gettext("obj_onionsan_event_211")
        global.msg[1] = scr_gettext("obj_onionsan_event_212")
        instance_create(0, 0, obj_dialoguer)
    }
    if (FL_OnionSanConvoCounter == 2 && obj_mainchara.x > 700 && global.interact == 0)
    {
        FL_OnionSanConvoCounter = 3
        global.interact = 1
        con = 11
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.msg[0] = scr_gettext("obj_onionsan_event_224")
        global.msg[1] = scr_gettext("obj_onionsan_event_225")
        global.msg[2] = scr_gettext("obj_onionsan_event_226")
        global.msg[3] = scr_gettext("obj_onionsan_event_227")
        global.msg[4] = scr_gettext("obj_onionsan_event_228")
        instance_create(0, 0, obj_dialoguer)
    }
    if (FL_OnionSanConvoCounter == 3 && obj_mainchara.x > 850 && global.interact == 0)
    {
        FL_OnionSanConvoCounter = 4
        global.interact = 1
        con = 11
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.msg[0] = scr_gettext("obj_onionsan_event_241")
        global.msg[1] = scr_gettext("obj_onionsan_event_242")
        global.msg[2] = scr_gettext("obj_onionsan_event_243")
        instance_create(0, 0, obj_dialoguer)
    }
    if (FL_OnionSanConvoCounter == 4 && obj_mainchara.x > 1000 && global.interact == 0)
    {
        FL_OnionSanConvoCounter = 5
        global.interact = 1
        con = 15
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.msg[0] = scr_gettext("obj_onionsan_event_256")
        global.msg[1] = scr_gettext("obj_onionsan_event_257")
        global.msg[2] = scr_gettext("obj_onionsan_event_258")
        with (onion)
            event_user(2)
        instance_create(0, 0, obj_dialoguer)
    }
    if (con == 11 && instance_exists(OBJ_WRITER) == false)
    {
        global.interact = 0
        con = 10
    }
    if (con == 15 && instance_exists(OBJ_WRITER))
    {
        if (con == 15 && OBJ_WRITER.stringno == 2)
        {
            with (obj_oniont)
                on = 4
            with (onion)
                on = 4
            with (onion)
                follow = 0
        }
    }
    if (con == 15 && instance_exists(OBJ_WRITER) == false)
    {
        con = 16
        global.interact = 0
    }
    if (FL_OnionSanConvoCounter == 5 && obj_mainchara.x > 600 && obj_mainchara.x < 640 && global.interact == 0)
    {
        if (onion.on != 4 && onion.on != 0)
        {
            FL_OnionSanConvoCounter = 6
            global.interact = 1
            con = 11
            global.facechoice = 0
            global.msc = 0
            global.typer = 5
            global.msc = 839
            once = 1
            instance_create(0, 0, obj_dialoguer)
        }
    }
    if (FL_OnionSanConvoCounter == 6 && obj_mainchara.x > 600 && obj_mainchara.x < 640 && global.interact == 0 && once == 0)
    {
        if (onion.on != 4 && onion.on != 0)
        {
            once = 1
            global.interact = 1
            con = 11
            global.msc = 0
            global.typer = 5
            global.facechoice = 0
            global.msg[0] = scr_gettext("obj_onionsan_event_312")
            global.msg[1] = scr_gettext("obj_onionsan_event_313")
            global.msg[2] = scr_gettext("obj_onionsan_event_314")
            if (FL_TruePacifist == true)
            {
                global.msg[0] = scr_gettext("obj_onionsan_event_317")
                global.msg[1] = scr_gettext("obj_onionsan_event_318")
                global.msg[2] = scr_gettext("obj_onionsan_event_319")
                global.msg[3] = scr_gettext("obj_onionsan_event_320")
                FL_OnionSanConvoCounter = 7
                once = 1
            }
            instance_create(0, 0, obj_dialoguer)
        }
    }
    if (FL_OnionSanConvoCounter == 7 && obj_mainchara.x > 600 && obj_mainchara.x < 640 && global.interact == 0 && once == 0)
    {
        if (onion.on != 4 && onion.on != 0)
        {
            once = 1
            global.facechoice = 0
            global.interact = 1
            con = 11
            global.msc = 0
            global.typer = 5
            global.msg[0] = scr_gettext("obj_onionsan_event_337")
            instance_create(0, 0, obj_dialoguer)
        }
    }
    if (con == 25)
    {
        global.facing = Direction.Up
        con = 26
        global.interact = 1
        alarm[4] = 60
    }
    if (con == 27)
    {
        con = 28
        alarm[4] = 120
        onion.on = 4
    }
    if (con == 29)
    {
        global.interact = 0
        con = 30
        global.facing = Direction.Down
    }
}
