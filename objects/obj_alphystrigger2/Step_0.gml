if (con > 0)
{
    if (con == 1)
    {
        global.interact = 1
        alphys = obj_alphys_npc
        alphys.direction = 0
        global.typer = 47
        global.msc = 0
        global.faceemotion = 3
        global.facechoice = 6
        global.msg[0] = scr_gettext("obj_alphystrigger2_87")
        if (obj_mainchara.x > alphys.x)
            alphys.direction = 0
        if (obj_mainchara.x < alphys.x)
            alphys.direction = 180
        con = 2
        instance_create(0, 0, obj_dialoguer)
    }
    if (con == 2 && instance_exists(OBJ_WRITER) == false)
    {
        alphys.image_speed = 0.334
        if (obj_mainchara.x > alphys.x)
            global.facing = Direction.Left
        if (obj_mainchara.x < alphys.x)
            global.facing = Direction.Right
        if (obj_mainchara.y > alphys.y)
        {
            up = 0
            alphys.direction = 270
            alphys.vspeed = 3
            con = 3
        }
        if (obj_mainchara.y < alphys.y)
        {
            up = 1
            alphys.direction = 90
            alphys.vspeed = -3
            con = 3
        }
        if (abs((obj_mainchara.y - alphys.y)) <= 5)
        {
            up = 3
            alphys.vspeed = 0
            con = 4
        }
    }
    if (con == 3)
    {
        if (abs((obj_mainchara.y - alphys.y)) <= 3)
        {
            up = 3
            con = 4
        }
    }
    if (con == 4)
    {
        if (obj_mainchara.x > alphys.x)
        {
            alphys.direction = 0
            alphys.hspeed = 3
        }
        if (obj_mainchara.x < alphys.x)
        {
            alphys.direction = 180
            alphys.hspeed = -3
        }
        con = 5
    }
    if (con == 5)
    {
        if (abs(((obj_mainchara.x + 10) - (alphys.x + (alphys.sprite_width / 2)))) < 30)
        {
            alphys.image_speed = 0
            alphys.hspeed = 0
            if (obj_mainchara.x > alphys.x)
                alphys.direction = 0
            if (obj_mainchara.x < alphys.x)
                alphys.direction = 180
            con = 6
            alarm[4] = 20
        }
    }
    if (con == 7)
    {
        global.msg[0] = scr_gettext("obj_alphystrigger2_146")
        global.msg[1] = scr_gettext("obj_alphystrigger2_147")
        instance_create(0, 0, obj_dialoguer)
        con = 8
    }
    if (con == 8 && instance_exists(OBJ_WRITER) == false)
    {
        con = 9
        alarm[4] = 15
    }
    if (con == 10 && instance_exists(OBJ_WRITER) == false)
    {
        blc = instance_create((alphys.x + 8), (alphys.y - 5), obj_cosmeticblcon)
        snd_play(snd_b)
        alarm[4] = 30
        con = 11
    }
    if (con == 12 && instance_exists(OBJ_WRITER) == false)
    {
        with (blc)
            instance_destroy()
        global.msg[0] = scr_gettext("obj_alphystrigger2_169")
        global.msg[1] = scr_gettext("obj_alphystrigger2_170")
        global.msg[2] = scr_gettext("obj_alphystrigger2_171")
        instance_create(0, 0, obj_dialoguer)
        con = 13
    }
    if (con == 13 && instance_exists(OBJ_WRITER) == false)
    {
        if (obj_mainchara.x > alphys.x)
            alphys.direction = 180
        if (obj_mainchara.x < alphys.x)
            alphys.direction = 0
        alphys.speed = 6
        alphys.image_speed = 0.5
        con = 14
    }
    if (con == 14)
    {
        if (alphys.x > ((view_xview_get(0) + view_wview_get(0)) + 30) || alphys.x < (view_xview_get(0) - 30))
        {
            caster_pause(global.currentsong)
            alphys.speed = 0
            noise = caster_load("music/alphysfix.ogg")
            caster_play(noise, 0.8, 1)
            con = 15
            alarm[4] = 100
        }
    }
    if (con == 16)
    {
        caster_free(noise)
        caster_resume(global.currentsong)
        if (obj_mainchara.x > alphys.x)
            alphys.direction = 0
        if (obj_mainchara.x < alphys.x)
            alphys.direction = 180
        alphys.speed = 6
        if (abs(((obj_mainchara.x + 10) - (alphys.x + (alphys.sprite_width / 2)))) < 30)
        {
            alphys.image_speed = 0
            alphys.speed = 0
            if (obj_mainchara.x > alphys.x)
                alphys.direction = 0
            if (obj_mainchara.x < alphys.x)
                alphys.direction = 180
            con = 17
            alarm[4] = 20
        }
    }
    if (con == 18)
    {
        global.faceemotion = 0
        global.msg[0] = scr_gettext("obj_alphystrigger2_221")
        global.msg[1] = scr_gettext("obj_alphystrigger2_222")
        global.msg[2] = scr_gettext("obj_alphystrigger2_223")
        global.msg[3] = scr_gettext("obj_alphystrigger2_224")
        global.msg[4] = scr_gettext("obj_alphystrigger2_225")
        global.msg[5] = scr_gettext("obj_alphystrigger2_226")
        global.msg[6] = scr_gettext("obj_alphystrigger2_227")
        global.msg[7] = scr_gettext("obj_alphystrigger2_228")
        global.msg[8] = scr_gettext("obj_alphystrigger2_229")
        global.msg[9] = scr_gettext("obj_alphystrigger2_230")
        global.msg[10] = scr_gettext("obj_alphystrigger2_231")
        global.msg[11] = scr_gettext("obj_alphystrigger2_232")
        instance_create(0, 0, obj_dialoguer)
        slid = 0
        con = 19
        scr_phoneget(220)
        scr_phoneget(221)
    }
    if (con == 19 && instance_exists(OBJ_WRITER) == true)
    {
        if (OBJ_WRITER.stringno == 11 && slid == 0)
        {
            with (obj_slidingdoor)
                event_user(0)
            slid = 1
        }
    }
    if (con == 19 && instance_exists(OBJ_WRITER) == false)
    {
        con = 20
        if (obj_mainchara.x > alphys.x)
            alphys.direction = 180
        if (obj_mainchara.x < alphys.x)
            alphys.direction = 0
        alphys.speed = 6
        alphys.image_speed = 0.5
    }
    if (con == 20)
    {
        if (abs(((alphys.x - obj_slidingdoor.x) + 12)) < 40)
        {
            if (alphys.x > obj_mainchara.x)
            {
                with (obj_slidingdoor)
                    event_user(0)
            }
            con = 21
        }
    }
    if (con == 21)
    {
        if (alphys.direction == 0 && alphys.x >= (obj_slidingdoor.x + 10))
        {
            alphys.direction = 90
            con = 22
        }
        if (alphys.direction == 180 && alphys.x <= (obj_slidingdoor.x + 15))
        {
            alphys.direction = 90
            con = 22
        }
    }
    if (con == 22)
    {
        if (alphys.y < (obj_slidingdoor.y + 60))
        {
            alphys.d = 1
            alphys.depth = (obj_slidingdoor.depth + 1)
            with (obj_slidingdoor)
                event_user(1)
            con = 23
        }
    }
    if (con == 23)
    {
        if (alphys.y < (obj_slidingdoor.y + 26))
        {
            alphys.direction = 270
            alphys.speed = 0
            alphys.image_speed = 0.1
            alphys.y = (obj_slidingdoor.y + 25)
            con = 24
            global.plot = 127
            global.interact = 0
            with (obj_alphystrigger2)
                instance_destroy()
        }
    }
}
