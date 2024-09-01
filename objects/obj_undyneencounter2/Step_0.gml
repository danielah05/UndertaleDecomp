if (active == true && instance_exists(obj_mainchara))
{
    if (cn == 0)
    {
        instance_create(0, 0, obj_uspeargen)
        obj_mainchara.x += 6
        sl1 = instance_create(4, 120, obj_solidsmall)
        sl2 = instance_create(4, 140, obj_solidsmall)
        cn = 1
    }
    if (cn == 1 && obj_mainchara.x > 460)
    {
        if instance_exists(obj_uspeargen)
        {
            with (obj_uspeargen)
                alarm[0] += 1
        }
    }
    if (cn == 1 && obj_mainchara.x > 510 && global.interact == 0)
    {
        global.interact = 1
        if instance_exists(obj_uspeargen)
        {
            with (obj_uspeargen)
                instance_destroy()
        }
        m = instance_create(0, 0, obj_musfadeout)
        m.fadespeed = 0.01
        cn = 2
        alarm[4] = 90
    }
    if (cn == 3)
    {
        undyne.x = 290
        undyne.sprite_index = undyne.rsprite
        undyne.hspeed = 1
        undyne.image_speed = 0.1
        cn = 4
    }
    if (cn == 4)
    {
        if (undyne.x > 480)
        {
            undyne.hspeed = 0
            undyne.image_speed = 0
            cn = 5
            alarm[4] = 90
        }
    }
    if (cn == 6)
    {
        undyne.fun = true
        undyne.sprite_index = spr_undynea_r_raise
        undyne.image_speed = 0.2
        cn = 7
    }
    if (cn == 7)
    {
        if (undyne.image_index == 2)
        {
            undyne.image_speed = 0
            cn = 8
            alarm[4] = 20
        }
    }
    if (cn == 9)
    {
        undyne.image_speed = 0.5
        cn = 10
    }
    if (cn == 10)
    {
        if (undyne.image_index == 2)
            snd_play(snd_grab)
        if (undyne.image_index == 5)
        {
            undyne.d = 1
            cn = 11
            undyne.image_speed = 0
            alarm[4] = 60
        }
    }
    if (cn == 12)
    {
        undyne.image_index = 2
        undyne.image_speed = 0.2
        undyne.sprite_index = spr_undynea_r_raiseup
        cn = 13
    }
    if (cn == 13)
    {
        if (undyne.image_index >= 13)
        {
            undyne.image_speed = 0
            cn = 14
            alarm[4] = 120
        }
    }
    if (cn == 15)
    {
        undyne.image_speed = -1
        cn = 16
    }
    if (cn == 16)
    {
        if (undyne.image_index <= 1)
        {
            undyne.d = 0
            undyne.sprite_index = undyne.rsprite
            undyne.image_speed = 0
            undyne.image_index = 0
            cn = 17
            alarm[4] = 30
        }
    }
    if (cn == 18)
    {
        cn = 19
        alarm[4] = 40
    }
    if (cn == 20)
    {
        cn = 21
        alarm[4] = 30
    }
    if (cn == 22)
    {
        undyne.sprite_index = undyne.lsprite
        undyne.hspeed = -2
        undyne.image_speed = 0.2
        cn = 23
    }
    if (cn == 23)
    {
        if (undyne.x < 300)
        {
            with (undyne)
                instance_destroy()
            cn = 24
            global.interact = 0
            FL_MenuDisabled = false
        }
    }
    if (cn == 24)
    {
        if (collision_rectangle(200, 100, 220, 900, obj_mainchara, 0, 1) || collision_rectangle(780, 100, 790, 900, obj_mainchara, 0, 1))
        {
            caster_free(all)
            global.currentsong = caster_load("music/ambientwater.ogg")
            global.interact = 1
            cn = 25
        }
    }
    if (cn == 25)
    {
        if (obj_mainchara.y > 120)
        {
            mkid.y = 100
            up = 0
        }
        else
        {
            mkid.y = 130
            up = 1
        }
        if (obj_mainchara.x < 400)
        {
            left = 1
            mkid.hspeed = -4
            mkid.sprite_index = mkid.lsprite
        }
        else
        {
            left = 0
            mkid.hspeed = 4
            mkid.sprite_index = mkid.rsprite
        }
        cn = 27
    }
    if (cn == 27)
    {
        if (abs((mkid.x - obj_mainchara.x)) < 45)
        {
            mkid.hspeed = 0
            cn = 28
            if (left == 1)
                mkid.sprite_index = mkid.lsprite
            if (left == 0)
                mkid.sprite_index = mkid.rsprite
            mkid.image_index = 0
            alarm[4] = 20
        }
    }
    if (cn == 29)
    {
        cn = 30
        if (left == 1)
            mkid.sprite_index = mkid.rsprite
        else
            mkid.sprite_index = mkid.lsprite
        alarm[4] = 20
    }
    if (cn == 31)
    {
        if (up == 1)
            mkid.sprite_index = mkid.usprite
        if (up == 0)
            mkid.sprite_index = mkid.dsprite
        cn = 32
        alarm[4] = 20
    }
    if (cn == 33)
    {
        if (left == 1)
            mkid.sprite_index = mkid.ltsprite
        if (left == 0)
            mkid.sprite_index = mkid.rtsprite
        mkid.myinteract = 3
        global.typer = 5
        global.msc = 0
        global.facechoice = 0
        global.msg[0] = scr_gettext("obj_undyneencounter2_329")
        global.msg[1] = scr_gettext("obj_undyneencounter2_330")
        global.msg[2] = scr_gettext("obj_undyneencounter2_331")
        global.msg[3] = scr_gettext("obj_undyneencounter2_332")
        global.msg[4] = scr_gettext("obj_undyneencounter2_333")
        global.msg[5] = scr_gettext("obj_undyneencounter2_334")
        global.msg[6] = scr_gettext("obj_undyneencounter2_335")
        if (FL_UndyneSpearsAnger == 1)
        {
            global.msg[4] = scr_gettext("obj_undyneencounter2_338")
            global.msg[5] = scr_gettext("obj_undyneencounter2_339")
            global.msg[6] = scr_gettext("obj_undyneencounter2_340")
            global.msg[7] = scr_gettext("obj_undyneencounter2_341")
        }
        instance_create(0, 0, obj_dialoguer)
        cn = 34
    }
    if (cn == 34 && instance_exists(OBJ_WRITER) == false)
    {
        mkid.hspeed = 6
        mkid.myinteract = 0
        mkid.image_speed = 0.3
        mkid.sprite_index = mkid.rsprite
        cn = 34.1
        if (left == 1)
            alarm[4] = 7
        else
            alarm[4] = 12
    }
    if (cn == 35.1)
    {
        mkid.hspeed = 0
        mkid.fun = true
        mkid.image_index = 0
        mkid.image_speed = 0.334
        mkid.sprite_index = spr_mkid_trip_r
        cn = 35.2
    }
    if (cn == 35.2)
    {
        if (mkid.image_index >= 19)
        {
            mkid.image_index = 0
            mkid.x += 13
            mkid.sprite_index = mkid.rsprite
            cn = 35.3
            alarm[4] = 15
        }
    }
    if (cn == 36.3)
    {
        cn = 37
        mkid.hspeed = 4
        alarm[4] = 30
    }
    if (cn == 38)
    {
        global.interact = 0
        global.border = 0
        FL_InBattle = false
        FL_TypeHeartTransition = HeartTransitionType.Normal
        SCR_BORDERSETUP()
        caster_loop(global.currentsong, 0.8, 1)
        cn = 37
        global.plot = 110
        instance_destroy()
        with (sl1)
            instance_destroy()
        with (sl2)
            instance_destroy()
    }
}
