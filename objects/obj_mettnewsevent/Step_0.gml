if (con == 1)
{
    obj_mainchara.cutscene = true
    FL_UnknownBoolean17 = true
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_mettnewsevent_88")
    global.msg[1] = scr_gettext("obj_mettnewsevent_89")
    global.msg[2] = scr_gettext("obj_mettnewsevent_90")
    global.msg[3] = scr_gettext("obj_mettnewsevent_91")
    global.msg[4] = scr_gettext("obj_mettnewsevent_92")
    global.msg[5] = scr_gettext("obj_mettnewsevent_93")
    scr_regulartext()
    con = 3
    snd_play(snd_phone)
    if (quickskip == 1)
        con = 130
}
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
    FL_AnimationIndex = 1
    snd_play(snd_noise)
    con = 4
    news = caster_load("music/news.ogg")
    if (quickskip == 0)
        event_user(0)
    nitem[0] = obj_backgrounder_parent
    dog = instance_create(380, 250, obj_mettnews_artifact)
    dog.type = 1
    nitem[1] = dog
    water = instance_create(276, 336, obj_mettnews_artifact)
    water.type = 2
    nitem[2] = water
    script = instance_create(380, 342, obj_mettnews_artifact)
    script.type = 3
    nitem[3] = script
    basketball = instance_create(278, 252, obj_mettnews_artifact)
    basketball.type = 4
    nitem[4] = basketball
    present = instance_create(494, 246, obj_mettnews_artifact)
    present.type = 5
    nitem[5] = present
    game = instance_create(494, 342, obj_mettnews_artifact)
    game.type = 6
    nitem[6] = game
    if (quickskip == 0)
    {
        ff1 = instance_create(140, 300, obj_kitchenforcefield)
        ff1.image_xscale = 1
        ff1.image_yscale = 2
        ff2 = instance_create(560, 300, obj_kitchenforcefield)
        ff2.image_xscale = 1
        ff2.image_yscale = 2
        ff3 = instance_create(340, 200, obj_kitchenforcefield)
        ff3.image_xscale = 2
        ff3.image_yscale = 1
        ff4 = instance_create(420, 400, obj_kitchenforcefield)
        ff4.image_xscale = 2
        ff4.image_yscale = 1
        ff5 = instance_create(720, 300, obj_kitchenforcefield)
        ff5.image_xscale = 1
        ff5.image_yscale = 2
        alarm[4] = 60
    }
    else
        con = 129
}
if (con == 5)
{
    global.msg[0] = scr_gettext("obj_mettnewsevent_159")
    d = instance_create(0, 0, obj_dialoguer)
    d.side = 0
    con = 6
}
if (con == 6 && instance_exists(OBJ_WRITER) == false)
{
    caster_loop(news, 0.9, 1)
    con = 7
    global.typer = 27
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 0
    global.msg[0] = scr_gettext("obj_mettnewsevent_174")
    global.msg[1] = scr_gettext("obj_mettnewsevent_175")
    global.msg[2] = scr_gettext("obj_mettnewsevent_176")
    global.msg[3] = scr_gettext("obj_mettnewsevent_177")
    global.msg[4] = scr_gettext("obj_mettnewsevent_178")
    global.msg[5] = scr_gettext("obj_mettnewsevent_179")
    global.msg[6] = scr_gettext("obj_mettnewsevent_180")
    dg = instance_create(0, 0, obj_dialoguer)
    dg.side = 0
}
if (con == 7 && instance_exists(OBJ_WRITER) == false)
{
    FL_AnimationIndex = 2
    global.interact = 0
    con = 8
}
if (con == 50)
{
    nitem[eventchoice].con = 2
    global.interact = 1
    con = 51
    alarm[4] = 20
}
if (con == 51)
    global.interact = 1
if (con == 52)
    con = (60 + ((eventchoice - 1) * 5))
if (con == 60)
{
    connor = 0
    global.typer = 27
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 0
    global.facing = Direction.Down
    global.msg[0] = scr_gettext("obj_mettnewsevent_229")
    global.msg[1] = scr_gettext("obj_mettnewsevent_230")
    global.msg[2] = scr_gettext("obj_mettnewsevent_231")
    global.msg[3] = scr_gettext("obj_mettnewsevent_232")
    global.msg[4] = scr_gettext("obj_mettnewsevent_233")
    global.msg[5] = scr_gettext("obj_mettnewsevent_234")
    global.msg[6] = scr_gettext("obj_mettnewsevent_235")
    global.msg[7] = scr_gettext("obj_mettnewsevent_236")
    global.msg[8] = scr_gettext("obj_mettnewsevent_237")
    gr = instance_create(0, 0, obj_dialoguer)
    gr.side = 0
    con = 61
}
if (con == 61 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 4 && connor == 0)
    {
        connor = 1
        caster_pause(news)
    }
}
if (con == 61 && instance_exists(OBJ_WRITER) == false)
{
    snd_play(snd_noise)
    with (dog)
        sprite_index = bombsprite
    con = 62
    alarm[4] = 30
}
if (con == 63)
{
    global.msg[0] = scr_gettext("obj_mettnewsevent_264")
    global.msg[1] = scr_gettext("obj_mettnewsevent_265")
    global.msg[2] = scr_gettext("obj_mettnewsevent_266")
    global.msg[3] = scr_gettext("obj_mettnewsevent_267")
    gr = instance_create(0, 0, obj_dialoguer)
    gr.side = 0
    con = 100
}
if (con == 65)
{
    connor = 0
    global.typer = 27
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 0
    global.facing = Direction.Down
    global.msg[0] = scr_gettext("obj_mettnewsevent_283")
    global.msg[1] = scr_gettext("obj_mettnewsevent_284")
    global.msg[2] = scr_gettext("obj_mettnewsevent_285")
    global.msg[3] = scr_gettext("obj_mettnewsevent_286")
    global.msg[4] = scr_gettext("obj_mettnewsevent_287")
    global.msg[5] = scr_gettext("obj_mettnewsevent_288")
    global.msg[6] = scr_gettext("obj_mettnewsevent_289")
    global.msg[7] = scr_gettext("obj_mettnewsevent_290")
    global.msg[8] = scr_gettext("obj_mettnewsevent_291")
    gr = instance_create(0, 0, obj_dialoguer)
    gr.side = 0
    con = 66
}
if (con == 66 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 4 && connor == 0)
    {
        connor = 1
        caster_pause(news)
    }
}
if (con == 66 && instance_exists(OBJ_WRITER) == false)
{
    snd_play(snd_noise)
    with (water)
        sprite_index = bombsprite
    con = 67
    alarm[4] = 30
}
if (con == 68)
{
    global.msg[0] = scr_gettext("obj_mettnewsevent_318")
    global.msg[1] = scr_gettext("obj_mettnewsevent_319")
    global.msg[2] = scr_gettext("obj_mettnewsevent_320")
    global.msg[3] = scr_gettext("obj_mettnewsevent_321")
    gr = instance_create(0, 0, obj_dialoguer)
    gr.side = 0
    con = 100
}
if (con == 70)
{
    connor = 0
    global.typer = 27
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 0
    global.facing = Direction.Down
    global.msg[0] = scr_gettext("obj_mettnewsevent_337")
    global.msg[1] = scr_gettext("obj_mettnewsevent_338")
    global.msg[2] = scr_gettext("obj_mettnewsevent_339")
    gr = instance_create(0, 0, obj_dialoguer)
    gr.side = 0
    con = 71
}
if (con == 71 && instance_exists(OBJ_WRITER) == false)
{
    caster_pause(news)
    snd_play(snd_noise)
    with (script)
        sprite_index = bombsprite
    con = 72
    alarm[4] = 30
}
if (con == 73)
{
    global.msg[0] = scr_gettext("obj_mettnewsevent_372")
    global.msg[1] = scr_gettext("obj_mettnewsevent_373")
    global.msg[2] = scr_gettext("obj_mettnewsevent_374")
    global.msg[3] = scr_gettext("obj_mettnewsevent_375")
    global.msg[4] = scr_gettext("obj_mettnewsevent_376")
    global.msg[5] = scr_gettext("obj_mettnewsevent_377")
    global.msg[6] = scr_gettext("obj_mettnewsevent_378")
    gr = instance_create(0, 0, obj_dialoguer)
    gr.side = 0
    con = 100
}
if (con == 75)
{
    connor = 0
    global.typer = 27
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 0
    global.facing = Direction.Down
    global.msg[0] = scr_gettext("obj_mettnewsevent_394")
    global.msg[1] = scr_gettext("obj_mettnewsevent_395")
    global.msg[2] = scr_gettext("obj_mettnewsevent_396")
    global.msg[3] = scr_gettext("obj_mettnewsevent_397")
    global.msg[4] = scr_gettext("obj_mettnewsevent_398")
    global.msg[5] = scr_gettext("obj_mettnewsevent_399")
    global.msg[6] = scr_gettext("obj_mettnewsevent_400")
    global.msg[7] = scr_gettext("obj_mettnewsevent_401")
    global.msg[8] = scr_gettext("obj_mettnewsevent_402")
    gr = instance_create(0, 0, obj_dialoguer)
    gr.side = 0
    con = 76
}
if (con == 76 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 6 && connor == 0)
    {
        connor = 1
        caster_pause(news)
    }
}
if (con == 76 && instance_exists(OBJ_WRITER) == false)
{
    snd_play(snd_noise)
    with (basketball)
        sprite_index = bombsprite
    con = 77
    alarm[4] = 30
}
if (con == 78)
{
    global.msg[0] = scr_gettext("obj_mettnewsevent_429")
    global.msg[1] = scr_gettext("obj_mettnewsevent_430")
    global.msg[2] = scr_gettext("obj_mettnewsevent_431")
    global.msg[3] = scr_gettext("obj_mettnewsevent_432")
    global.msg[4] = scr_gettext("obj_mettnewsevent_434")
    global.msg[5] = scr_gettext("obj_mettnewsevent_435")
    gr = instance_create(0, 0, obj_dialoguer)
    gr.side = 0
    con = 100
}
if (con == 80)
{
    connor = 0
    global.typer = 27
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 0
    global.facing = Direction.Down
    global.msg[0] = scr_gettext("obj_mettnewsevent_449")
    global.msg[1] = scr_gettext("obj_mettnewsevent_450")
    global.msg[2] = scr_gettext("obj_mettnewsevent_451")
    gr = instance_create(0, 0, obj_dialoguer)
    gr.side = 0
    con = 81
}
if (con == 81 && instance_exists(OBJ_WRITER) == false)
{
    caster_pause(news)
    snd_play(snd_noise)
    with (present)
        sprite_index = bombsprite
    con = 82
    alarm[4] = 30
}
if (con == 83)
{
    global.msg[0] = scr_gettext("obj_mettnewsevent_479")
    global.msg[1] = scr_gettext("obj_mettnewsevent_480")
    global.msg[2] = scr_gettext("obj_mettnewsevent_481")
    global.msg[3] = scr_gettext("obj_mettnewsevent_482")
    global.msg[4] = scr_gettext("obj_mettnewsevent_483")
    global.msg[5] = scr_gettext("obj_mettnewsevent_484")
    global.msg[6] = scr_gettext("obj_mettnewsevent_485")
    gr = instance_create(0, 0, obj_dialoguer)
    gr.side = 0
    con = 100
}
if (con == 85)
{
    connor = 0
    global.typer = 27
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 0
    global.facing = Direction.Down
    global.msg[0] = scr_gettext("obj_mettnewsevent_499")
    global.msg[1] = scr_gettext("obj_mettnewsevent_500")
    global.msg[2] = scr_gettext("obj_mettnewsevent_501")
    global.msg[3] = scr_gettext("obj_mettnewsevent_502")
    global.msg[4] = scr_gettext("obj_mettnewsevent_503")
    gr = instance_create(0, 0, obj_dialoguer)
    gr.side = 0
    con = 86
}
if (con == 86 && instance_exists(OBJ_WRITER) == false)
{
    caster_pause(news)
    snd_play(snd_noise)
    with (game)
        sprite_index = bombsprite
    con = 87
    alarm[4] = 30
}
if (con == 88)
{
    global.msg[0] = scr_gettext("obj_mettnewsevent_531")
    global.msg[1] = scr_gettext("obj_mettnewsevent_532")
    global.msg[2] = scr_gettext("obj_mettnewsevent_533")
    global.msg[3] = scr_gettext("obj_mettnewsevent_534")
    global.msg[4] = scr_gettext("obj_mettnewsevent_535")
    global.msg[5] = scr_gettext("obj_mettnewsevent_536")
    global.msg[6] = scr_gettext("obj_mettnewsevent_537")
    gr = instance_create(0, 0, obj_dialoguer)
    gr.side = 0
    con = 100
}
if (con == 100 && instance_exists(OBJ_WRITER) == false)
{
    water.sprite_index = water.bombsprite
    script.sprite_index = script.bombsprite
    game.sprite_index = game.bombsprite
    if (eventchoice != 1 && eventchoice != 4)
        present.sprite_index = present.bombsprite
    FL_AnimationIndex = 8
    with (ff2)
        instance_destroy()
    with (ff3)
        instance_destroy()
    with (ff4)
        instance_destroy()
    con = 103
    alarm[4] = 50
    obj_mainchara.cutscene = true
    event_user(1)
}
if (con == 105)
{
    if (view_xview_get(0) > 240)
        view_xview_set(0, (view_xview_get(0) - 3))
    if (view_xview_get(0) < 210)
        view_xview_set(0, (view_xview_get(0) + 3))
    if (view_yview_get(0) < 140)
        view_yview_set(0, (view_yview_get(0) + 3))
    if (view_yview_get(0) > 150)
        view_yview_set(0, (view_yview_get(0) - 3))
}
if (con == 104)
{
    con = 105
    alarm[4] = 30
}
if (con == 106)
    con = 107
if (con == 107)
{
    global.typer = 27
    global.msc = 0
    global.faceemotion = 0
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_mettnewsevent_609")
    global.msg[1] = scr_gettext("obj_mettnewsevent_610")
    if (eventchoice != 1)
    {
        global.msg[2] = scr_gettext("obj_mettnewsevent_613")
        con = 108
    }
    else
    {
        global.msg[2] = scr_gettext("obj_mettnewsevent_618")
        con = 112
    }
    dg = instance_create(0, 0, obj_dialoguer)
    dg.side = 0
}
if (con == 108 && instance_exists(OBJ_WRITER) == false)
{
    snd_play(snd_noise)
    dog.sprite_index = dog.bombsprite
    con = 109
    alarm[4] = 30
}
if (con == 110)
    con = 116
if (con == 112 && instance_exists(OBJ_WRITER) == false)
{
    snd_play(snd_noise)
    present.sprite_index = present.bombsprite
    con = 109
    alarm[4] = 30
}
if (con == 116)
{
    if (eventchoice != 4)
    {
        global.msg[0] = scr_gettext("obj_mettnewsevent_649")
        con = 118
    }
    else
    {
        global.msg[0] = scr_gettext("obj_mettnewsevent_654")
        con = 122
    }
    dg = instance_create(0, 0, obj_dialoguer)
    dg.side = 0
}
if (con == 118 && instance_exists(OBJ_WRITER) == false)
{
    snd_play(snd_noise)
    basketball.sprite_index = basketball.bombsprite
    con = 119
    alarm[4] = 20
}
if (con == 122 && instance_exists(OBJ_WRITER) == false)
{
    snd_play(snd_noise)
    present.sprite_index = present.bombsprite
    con = 119
    alarm[4] = 20
}
if (con == 120)
    con = 125
if (con == 125)
{
    global.msg[0] = scr_gettext("obj_mettnewsevent_684")
    dg = instance_create(0, 0, obj_dialoguer)
    dg.side = 0
    con = 125.1
}
if (con == 125.1 && instance_exists(OBJ_WRITER) == false)
{
    wordfall = instance_create((view_xview_get(0) + 20), (view_yview_get(0) + 20), obj_wordfall)
    global.typer = 5
    global.msg[0] = scr_gettext("obj_mettnewsevent_694")
    global.msg[1] = scr_gettext("obj_mettnewsevent_695")
    dg = instance_create(0, 0, obj_dialoguer)
    dg.side = 0
    con = 126
}
if (con == 126 && instance_exists(OBJ_WRITER) == false)
{
    bigbomb = scr_marker(340, 80, spr_bigbomb)
    bigbomb.depth = 500000
    bigbombsolid = instance_create(340, 100, obj_solidwide)
    global.typer = 27
    global.msg[0] = scr_gettext("obj_mettnewsevent_708")
    dg = instance_create(0, 0, obj_dialoguer)
    dg.side = 0
    con = 127
}
if (con == 127 && instance_exists(OBJ_WRITER) == false)
{
    global.facing = Direction.Up
    view_target_set(0, noone)
    if (view_yview_get(0) > 40)
    {
        obj_mettanchor.y -= 15
        view_yview_set(0, (view_yview_get(0) - 10))
    }
    else
        con = 128
}
if (con == 128)
{
    global.msg[0] = scr_gettext("obj_mettnewsevent_730")
    global.msg[1] = scr_gettext("obj_mettnewsevent_731")
    global.msg[2] = scr_gettext("obj_mettnewsevent_732")
    global.msg[3] = scr_gettext("obj_mettnewsevent_733")
    global.msg[4] = scr_gettext("obj_mettnewsevent_734")
    dg = instance_create(0, 0, obj_dialoguer)
    dg.side = 1
    con = 129
    with (obj_mettnews_artifact)
        vspeed = 5
    with (obj_mettnews_artifact)
        gtfo = 1
    with (dog)
        vspeed = 0
    with (dog)
        gtfo = 0
}
if (con == 129 && instance_exists(OBJ_WRITER) == false)
{
    if instance_exists(game)
    {
        with (game)
            instance_destroy()
    }
    if instance_exists(present)
    {
        with (present)
            instance_destroy()
    }
    if instance_exists(script)
    {
        with (script)
            instance_destroy()
    }
    if instance_exists(water)
    {
        with (water)
            instance_destroy()
    }
    if instance_exists(basketball)
    {
        with (basketball)
            instance_destroy()
    }
    obj_mettanchor.hspeed = 6
    global.facing = Direction.Down
    go = 0
    xx = obj_mainchara.x
    yy = obj_mainchara.y
    if (view_xview_get(0) < round(((xx - (view_wview_get(0) / 2)) + 10)))
        view_xview_set(0, (view_xview_get(0) + 5))
    if (view_xview_get(0) > round(((xx - (view_wview_get(0) / 2)) + 10)))
        view_xview_set(0, (view_xview_get(0) - 5))
    if (abs((view_xview_get(0) - round(((xx - (view_wview_get(0) / 2)) + 10)))) < 6)
    {
        view_xview_set(0, round(((xx - (view_wview_get(0) / 2)) + 10)))
        go += 1
    }
    if (view_yview_get(0) < round(((yy - (view_hview_get(0) / 2)) + 10)))
        view_yview_set(0, (view_yview_get(0) + 5))
    if (view_yview_get(0) > round(((yy - (view_hview_get(0) / 2)) + 10)))
        view_yview_set(0, (view_yview_get(0) - 5))
    if (abs((view_yview_get(0) - round(((yy - (view_hview_get(0) / 2)) + 10)))) < 6)
    {
        view_yview_set(0, round(((yy - (view_hview_get(0) / 2)) + 10)))
        go += 1
    }
    if (go == 2)
        con = 130
}
if (con > 129)
{
    if (quickskip == 0)
    {
        if instance_exists(dog)
        {
            clumber = 0
            if (obj_mainchara.x > dog.x)
            {
                if (dog.x > 300)
                    clumber = 1
            }
            if (obj_mainchara.x < dog.x)
            {
                if (dog.x < 400)
                    clumber = 2
            }
            if (clumber != 0)
            {
                if (clumber == 1)
                    dog.hspeed = -0.5
                if (clumber == 2)
                    dog.hspeed = 0.5
                dog.sprite_index = spr_tobdogl_fire
            }
            else
            {
                dog.hspeed = 0
                dog.image_speed = 0.1
                dog.sprite_index = spr_tobdog_sleep_fire
            }
        }
    }
}
if (con == 130 && instance_exists(OBJ_WRITER) == false)
{
    caster_free(all)
    global.mercy = 1
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_mettnewsevent_827")
    global.msg[1] = scr_gettext("obj_mettnewsevent_828")
    global.msg[2] = scr_gettext("obj_mettnewsevent_829")
    global.msg[3] = scr_gettext("obj_mettnewsevent_830")
    global.msg[4] = scr_gettext("obj_mettnewsevent_831")
    global.msg[5] = scr_gettext("obj_mettnewsevent_832")
    scr_regulartext()
    con = 131
    snd_play(snd_phone)
}
if (con == 131 && instance_exists(OBJ_WRITER) == false)
{
    if (quickskip == 0)
    {
        with (obj_mettanchor)
            instance_destroy()
        newdog = instance_create(dog.x, dog.y, obj_mettnews_battleobj)
        with (obj_mettnews_artifact)
            instance_destroy()
    }
    else
        newdog = instance_create(400, 300, obj_mettnews_battleobj)
    newwater = instance_create(430, 400, obj_mettnews_battleobj)
    newwater.bombtype = BombType.ExtremelyAgileGlassOfWater
    newscript = instance_create(680, 420, obj_mettnews_battleobj)
    newscript.bombtype = BombType.Script
    newbasketball = instance_create(340, 100, obj_mettnews_battleobj)
    newbasketball.bombtype = BombType.Basketball
    newpresent = instance_create(650, 100, obj_mettnews_battleobj)
    newpresent.bombtype = BombType.Present
    newgame = instance_create(210, 500, obj_mettnews_battleobj)
    newgame.bombtype = BombType.Game
    newticker = instance_create(view_xview_get(0), (view_yview_get(0) + 200), obj_mettnews_ticker)
    newticker.on = 1
    newticker.doom = 1
    newticker.voff = 40
    doomtimer = instance_create(0, 0, obj_doomtimer)
    obj_mainchara.cutscene = false
    view_target_set(0, obj_mainchara)
    global.interact = 0
    global.currentsong = caster_load("music/news_battle.ogg")
    caster_loop(global.currentsong, 1, 1)
    con = 132
}
if (con == 160)
{
    with (doomtimer)
        instance_destroy()
    newticker.on = 0
    newticker.vspeed = 3
    global.interact = 1
    con = 161
    instance_create(0, 0, obj_musfadeout)
    alarm[4] = 15
}
if (con == 161)
    global.interact = 1
if (con == 162)
{
    if (FL_FailedBombDefusing == 1)
        failure = 1
    if (failure == 1)
    {
        instance_create(0, 0, obj_flasher)
        snd_play(snd_break2)
        with (obj_mettnews_battleobj)
            instance_destroy()
    }
    with (newticker)
        instance_destroy()
    mett = instance_create((view_xview_get(0) + 340), (view_yview_get(0) + 70), obj_mettanchor)
    FL_AnimationIndex = 8
    mett.on = 2
    if instance_exists(obj_musfadeout)
    {
        with (obj_musfadeout)
            instance_destroy()
        caster_free(all)
    }
    global.currentsong = caster_load("music/mtgameshow.ogg")
    caster_loop(global.currentsong, 1, 1)
    con = 163
    alarm[4] = 20
}
if (con == 164)
{
    conner = 0
    global.typer = 27
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 0
    if (failure == 0)
    {
        global.msg[0] = scr_gettext("obj_mettnewsevent_925")
        global.msg[1] = scr_gettext("obj_mettnewsevent_926")
        global.msg[2] = scr_gettext("obj_mettnewsevent_927")
        global.msg[3] = scr_gettext("obj_mettnewsevent_928")
        global.msg[4] = scr_gettext("obj_mettnewsevent_929")
        global.msg[5] = scr_gettext("obj_mettnewsevent_930")
    }
    if (failure == 1)
    {
        global.msg[0] = scr_gettext("obj_mettnewsevent_934")
        global.msg[1] = scr_gettext("obj_mettnewsevent_935")
        global.msg[2] = scr_gettext("obj_mettnewsevent_936")
        global.msg[3] = scr_gettext("obj_mettnewsevent_937")
        global.msg[4] = scr_gettext("obj_mettnewsevent_938")
        global.msg[5] = scr_gettext("obj_mettnewsevent_939")
    }
    d = instance_create(0, 0, obj_dialoguer)
    d.side = 1
    con = 165
}
if (con == 165 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 4 && conner == 0)
    {
        conner = 1
        caster_pause(global.currentsong)
    }
    if (OBJ_WRITER.stringno == 5 && conner < 2)
    {
        mypitch = 1
        ohno = caster_load("music/bad.ogg")
        caster_loop(ohno, 1, 1)
        conner = 2
    }
}
if (con == 165 && instance_exists(OBJ_WRITER) == false)
{
    con = 166
    alarm[4] = 80
}
if (con == 167)
{
    mypitch -= 0.015
    caster_set_volume(ohno, mypitch)
    caster_set_pitch(ohno, mypitch)
    if (mypitch < 0.06)
    {
        con = 168
        alarm[4] = 30
        caster_free(ohno)
    }
}
if (con == 169)
{
    conner = 0
    global.msg[0] = scr_gettext("obj_mettnewsevent_987")
    global.msg[1] = scr_gettext("obj_mettnewsevent_988")
    global.msg[2] = scr_gettext("obj_mettnewsevent_989")
    scr_alface(3, 6)
    global.msg[4] = scr_gettext("obj_mettnewsevent_991")
    global.msg[5] = scr_gettext("obj_mettnewsevent_992")
    global.msg[6] = scr_gettext("obj_mettnewsevent_993")
    global.msg[7] = scr_gettext("obj_mettnewsevent_994")
    global.msg[8] = scr_gettext("obj_mettnewsevent_995")
    scr_alface(9, 5)
    global.msg[10] = scr_gettext("obj_mettnewsevent_997")
    global.msg[11] = scr_gettext("obj_mettnewsevent_998")
    global.msg[12] = scr_gettext("obj_mettnewsevent_999")
    global.msg[13] = scr_gettext("obj_mettnewsevent_1000")
    global.msg[14] = scr_gettext("obj_mettnewsevent_1001")
    global.msg[15] = scr_gettext("obj_mettnewsevent_1002")
    dg = instance_create(0, 0, obj_dialoguer)
    dg.side = 1
    con = 170
}
if (con == 170 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 47
    mett.hspeed = 4
    mett.on = 99
    global.facechoice = 6
    global.faceemotion = 0
    if (failure == 0)
    {
        global.msg[0] = scr_gettext("obj_mettnewsevent_1017")
        global.msg[1] = scr_gettext("obj_mettnewsevent_1018")
        global.msg[2] = scr_gettext("obj_mettnewsevent_1019")
        global.msg[3] = scr_gettext("obj_mettnewsevent_1020")
        global.msg[4] = scr_gettext("obj_mettnewsevent_1021")
        global.msg[5] = scr_gettext("obj_mettnewsevent_1022")
        global.msg[6] = scr_gettext("obj_mettnewsevent_1023")
        global.msg[7] = scr_gettext("obj_mettnewsevent_1024")
        global.msg[8] = scr_gettext("obj_mettnewsevent_1025")
        global.msg[9] = scr_gettext("obj_mettnewsevent_1026")
        global.msg[10] = scr_gettext("obj_mettnewsevent_1027")
        global.msg[11] = scr_gettext("obj_mettnewsevent_1028")
        global.msg[12] = scr_gettext("obj_mettnewsevent_1029")
    }
    if (failure == 1)
    {
        global.faceemotion = 4
        global.msg[0] = scr_gettext("obj_mettnewsevent_1034")
        global.msg[1] = scr_gettext("obj_mettnewsevent_1035")
        global.msg[2] = scr_gettext("obj_mettnewsevent_1036")
        global.msg[3] = scr_gettext("obj_mettnewsevent_1037")
        global.msg[4] = scr_gettext("obj_mettnewsevent_1038")
        global.msg[5] = scr_gettext("obj_mettnewsevent_1039")
        global.msg[6] = scr_gettext("obj_mettnewsevent_1040")
        global.msg[7] = scr_gettext("obj_mettnewsevent_1041")
        global.msg[8] = scr_gettext("obj_mettnewsevent_1042")
        global.msg[9] = scr_gettext("obj_mettnewsevent_1043")
        global.msg[10] = scr_gettext("obj_mettnewsevent_1044")
        global.msg[11] = scr_gettext("obj_mettnewsevent_1045")
        global.msg[12] = scr_gettext("obj_mettnewsevent_1046")
        global.msg[13] = scr_gettext("obj_mettnewsevent_1047")
    }
    instance_create(0, 0, obj_dialoguer)
    con = 171
}
if (con == 171 && instance_exists(OBJ_WRITER) == false)
{
    flowey = instance_create(40, 300, obj_stalkerflowey)
    obj_mainchara.cutscene = false
    view_target_set(0, obj_mainchara)
    with (obj_mettnews_ticker)
        instance_destroy()
    with (obj_mettanchor)
        instance_destroy()
    with (obj_kitchenforcefield)
        instance_destroy()
    global.plot = 161
    con = 172
    caster_free(all)
    with (obj_bluelaser_o)
        active = 2
    global.interact = 0
    FL_UnknownBoolean17 = false
    global.mercy = 0
    scr_tempsave()
    instance_destroy()
}
if (view_yview_get(0) <= 0)
    view_yview_set(0, 0)
