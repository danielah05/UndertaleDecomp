if (con == 1)
    global.interact = 1
if (con == 2)
{
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 0
    global.msc = 0
    global.msg[0] = scr_gettext("obj_undynedate_inside_120")
    global.msg[1] = scr_gettext("obj_undynedate_inside_121")
    instance_create(0, 0, obj_dialoguer)
    con = 3
}
if (con == 3 && instance_exists(OBJ_WRITER) == false)
{
    papyrus.sprite_index = spr_papyrus_boneget
    papyrus.image_speed = 0.25
    if (papyrus.image_index >= 4)
    {
        papyrus.image_speed = 0
        papyrus.image_index = 4
        con = 4
    }
}
if (con == 4)
{
    global.typer = 37
    global.facechoice = 5
    undyne.fun = false
    global.msg[0] = scr_gettext("obj_undynedate_inside_143")
    instance_create(0, 0, obj_dialoguer)
    con = 5
}
if (con == 5 && instance_exists(OBJ_WRITER) == false)
{
    undyne.vspeed = 3
    undyne.fun = true
    undyne.sprite_index = undyne.dsprite
    undyne.image_speed = 0.25
    con = 6
    alarm[4] = 15
}
if (con == 7)
{
    papyrus.image_index = 5
    con = 6.1
    undyne.sprite_index = undyne.usprite
    undyne.vspeed = -3
    alarm[4] = 15
}
if (con == 7.1)
{
    papyrus.sprite_index = papyrus.usprite
    papyrus.image_index = 0
    undyne.sprite_index = undyne.dtsprite
    undyne.image_index = 0
    undyne.image_speed = 0
    undyne.vspeed = 0
    undyne.fun = false
    global.msg[0] = scr_gettext("obj_undynedate_inside_177")
    instance_create(0, 0, obj_dialoguer)
    con = 10
}
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
    undyne.image_speed = 0.25
    undyne.sprite_index = undyne.usprite
    undyne.vspeed = -3
    alarm[4] = 15
    con = 9.1
    alarm[4] = 15
}
if (con == 10.1)
{
    undyne.sprite_index = undyne.lsprite
    undyne.vspeed = 0
    undyne.image_index = 0
    snd_play(snd_noise)
    obj_bonedrawer.drawerdown = 1
    con = 9.2
    alarm[4] = 18
}
if (con == 10.2)
{
    obj_bonedrawer.image_index = 1
    con = 9.3
    alarm[4] = 40
}
if (con == 10.3)
{
    con = 9.4
    snd_play(snd_noise)
    obj_bonedrawer.drawerdown = 3
    alarm[4] = 25
}
if (con == 10.4)
{
    undyne.sprite_index = undyne.dsprite
    undyne.vspeed = 3
    undyne.image_speed = 0.25
    alarm[4] = 15
    con = 9.5
}
if (con == 10.5)
{
    undyne.sprite_index = undyne.dtsprite
    undyne.fun = false
    undyne.image_speed = 0
    undyne.vspeed = 0
    global.typer = 37
    global.msg[0] = scr_gettext("obj_undynedate_inside_236")
    instance_create(0, 0, obj_dialoguer)
    con = 12
}
if (con == 12 && instance_exists(OBJ_WRITER) == false)
{
    papyrus.sprite_index = papyrus.rtsprite
    global.typer = 19
    global.facechoice = 4
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_undynedate_inside_250")
    global.msg[1] = scr_gettext("obj_undynedate_inside_251")
    global.msg[2] = scr_gettext("obj_undynedate_inside_252")
    instance_create(0, 0, obj_dialoguer)
    con = 13
    with (papyrus)
        scr_getideal((obj_undynewindow.x + 63), (obj_undynewindow.y + 10))
}
if (con == 13 && instance_exists(OBJ_WRITER) == false)
{
    alarm[4] = 10
    con = 14
}
if (con == 14)
{
    papyrus.sprite_index = papyrus.lsprite
    papyrus.image_speed = 0.5
    with (papyrus)
        scr_moveideal(14)
}
if (con == 15)
{
    global.facing = Direction.Left
    undyne.sprite_index = undyne.ltsprite
    papyrus2 = instance_create((papyrus.x + 10), (papyrus.y + 42), obj_papyrus_window)
    with (papyrus)
        instance_destroy()
    papyrus = papyrus2
    con = 16
    alarm[4] = 90
}
if (con == 17)
{
    global.facing = Direction.Up
    undyne.sprite_index = undyne.dtsprite
    con = 18
    alarm[4] = 60
}
if (con == 19)
{
    global.msc = 703
    global.typer = 37
    global.facechoice = 5
    con = 20
    instance_create(0, 0, obj_dialoguer)
}
if (con == 40 && instance_exists(OBJ_WRITER) == false)
{
    with (papyrus)
        instance_destroy()
    papyrus = instance_create(-30, 150, obj_papyrus_actor)
    papyrus.depth = 900000
    papyrus.d = 1
    papyrus.sprite_index = papyrus.rsprite
    papyrus.hspeed = 4
    con = 41
    papyrus.image_speed = 0.25
}
if (con == 41)
{
    if (papyrus.x > 10)
    {
        papyrus.hspeed = 0
        papyrus.image_speed = 0
        con = 42
        alarm[4] = 20
    }
}
if (con == 43)
{
    global.facing = Direction.Left
    undyne.sprite_index = undyne.ltsprite
    global.facechoice = 4
    global.faceemotion = 1
    global.msc = 0
    global.typer = 19
    global.msg[0] = scr_gettext("obj_undynedate_inside_335")
    global.msg[1] = scr_gettext("obj_undynedate_inside_336")
    global.msg[2] = scr_gettext("obj_undynedate_inside_337")
    global.msg[3] = scr_gettext("obj_undynedate_inside_338")
    global.msg[4] = scr_gettext("obj_undynedate_inside_339")
    instance_create(0, 0, obj_dialoguer)
    con = 44
}
if (con == 44 && instance_exists(OBJ_WRITER) == false)
{
    con = 45
    papyrus.hspeed = -2
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_undynedate_inside_351")
    global.msg[1] = scr_gettext("obj_undynedate_inside_352")
    instance_create(0, 0, obj_dialoguer)
}
if (con == 45)
    papyrus.image_angle -= 6
if (con == 45 && instance_exists(OBJ_WRITER) == false)
{
    global.faceemotion = 1
    global.facing = Direction.Up
    undyne.sprite_index = undyne.dtsprite
    global.msg[0] = scr_gettext("obj_undynedate_inside_367")
    global.msg[1] = scr_gettext("obj_undynedate_inside_368")
    global.msg[2] = scr_gettext("obj_undynedate_inside_369")
    global.msg[3] = scr_gettext("obj_undynedate_inside_370")
    global.msg[4] = scr_gettext("obj_undynedate_inside_371")
    global.msg[5] = scr_gettext("obj_undynedate_inside_372")
    global.msg[6] = scr_gettext("obj_undynedate_inside_373")
    global.msg[7] = scr_gettext("obj_undynedate_inside_374")
    global.msg[8] = scr_gettext("obj_undynedate_inside_375")
    global.msg[9] = scr_gettext("obj_undynedate_inside_376")
    global.msg[10] = scr_gettext("obj_undynedate_inside_377")
    global.msg[11] = scr_gettext("obj_undynedate_inside_378")
    global.msg[12] = scr_gettext("obj_undynedate_inside_379")
    global.msg[13] = scr_gettext("obj_undynedate_inside_380")
    instance_create(0, 0, obj_dialoguer)
    con = 50
}
if (con == 50 && instance_exists(OBJ_WRITER) == false)
{
    undyne2 = instance_create(undyne.x, undyne.y, obj_npc_room)
    undyne2.sprite_index = spr_undyne_polite
    with (undyne)
        instance_destroy()
    undyne = undyne2
    FL_AnimationIndex = 0
    global.interact = 0
    with (papyrus)
        instance_destroy()
    con = 51
    global.currentsong = caster_load("music/date.ogg")
    caster_loop(global.currentsong, 1, 1)
}
if (con == 51)
{
    if (obj_mainchara.y > 200 && global.interact == 0)
    {
        global.facing = Direction.Up
        global.msc = 0
        obj_mainchara.y = 196
        global.interact = 1
        global.typer = 37
        global.facechoice = 5
        global.faceemotion = 9
        global.msg[0] = scr_gettext("obj_undynedate_inside_415")
        global.msg[1] = scr_gettext("obj_undynedate_inside_416")
        instance_create(0, 0, obj_dialoguer)
        con = 52
    }
}
if (con == 52)
{
    global.facing = Direction.Up
    obj_mainchara.y = 196
}
if (con == 52 && instance_exists(OBJ_WRITER) == false)
{
    con = 51
    global.interact = 0
}
if (con == 60 && instance_exists(OBJ_WRITER) == false && global.interact == 0)
{
    global.interact = 1
    chair = scr_marker(obj_sign_room.x, obj_sign_room.y, obj_sign_room.sprite_index)
    chair.depth = 500000
    with (obj_sign_room)
        instance_destroy()
    con = 61
    alarm[4] = 12
    global.facing = Direction.Up
    obj_mainchara.chair = chair
    global.phasing = 1
    with (obj_mainchara)
        scr_getideal(chair.x, (chair.y - 20))
    obj_mainchara.image_speed = 0.25
}
if (con == 61)
{
    with (obj_mainchara)
        scr_moveideal(12)
}
if (con == 62)
{
    obj_mainchara.image_speed = 0
    con = 63
    alarm[4] = 20
}
if (con == 64)
{
    global.msc = 0
    global.interact = 1
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 9
    global.msg[0] = scr_gettext("obj_undynedate_inside_471")
    global.msg[1] = scr_gettext("obj_undynedate_inside_472")
    instance_create(0, 0, obj_dialoguer)
    con = 65
}
if (con == 65 && instance_exists(OBJ_WRITER) == false)
{
    undyne2 = instance_create(undyne.x, undyne.y, obj_undyne_actor)
    with (undyne)
        instance_destroy()
    undyne = undyne2
    undyne.vspeed = -3
    undyne.npcdir = 1
    con = 66
    alarm[4] = 13
}
if (con == 67)
{
    undyne.vspeed = 0
    undyne.hspeed = 3
    con = 68
    alarm[4] = 37
}
if (con == 69)
{
    undyne.hspeed = 0
    undyne.npcdir = 0
    undyne.image_speed = 0
    undyne.image_index = 0
    undyne.sprite_index = undyne.usprite
    con = 70
    alarm[4] = 30
    again = 0
}
if (con == 71)
{
    undyne.npcdir = 1
    undyne.hspeed = -3
    alarm[4] = 11
    con = 72
}
if (con == 73)
{
    with (undyne)
        scr_npc_halt("u")
    g = scr_marker(undyne.x, undyne.y, spr_notepaper)
    g.depth = 500000
    if (again == 0)
    {
        g.sprite_index = spr_teaboxes
        teabox = g
    }
    if (again == 1)
    {
        g.sprite_index = spr_hotchocolate
        hotchocolate = g
    }
    if (again == 2)
    {
        g.sprite_index = spr_soda
        soda = g
    }
    if (again == 3)
    {
        g.sprite_index = spr_sugarholder
        sugar = g
    }
    con = 74
    alarm[4] = 20
}
if (con == 75)
{
    if (again < 3)
        con = 71
    else
        con = 76
    again += 1
}
if (con == 76)
{
    undyne.npcdir = 1
    undyne.hspeed = -3
    con = 77
    alarm[4] = 5
}
if (con == 78)
{
    undyne.hspeed = 0
    undyne.vspeed = 3
    con = 79
    alarm[4] = 14
}
if (con == 80)
{
    FL_AnimationIndex = 5
    undyne.vspeed = 0
    with (undyne)
        scr_npc_halt("d")
    global.msg[0] = scr_gettext("obj_undynedate_inside_561")
    instance_create(0, 0, obj_dialoguer)
    con = 81
}
if (con == 81 && instance_exists(OBJ_WRITER) == false)
{
    con = 82
    mcxp = obj_mainchara.x
    mcyp = obj_mainchara.y
    global.interact = 0
    FL_UnknownBoolean17 = true
}
if (con == 82)
{
    if (obj_mainchara.x != mcxp || obj_mainchara.y != mcyp)
    {
        caster_pause(global.currentsong)
        FL_UnknownBoolean17 = false
        global.interact = 1
        obj_mainchara.cutscene = true
        view_target_set(0, noone)
        obj_mainchara.x = mcxp
        obj_mainchara.y = mcyp
        undyne.visible = false
        with (table)
            depth = 300000
        tspear = instance_create(undyne.x, undyne.y, obj_undyne_throwspear)
        con = 83
        alarm[4] = 60
    }
}
if (con == 84)
{
    global.interact = 1
    global.facing = Direction.Up
    with (tspear)
        instance_destroy()
    undyne.visible = true
    undyne.npcdir = 0
    undyne.sprite_index = spr_undyne_throwtalk
    global.faceemotion = 1
    global.facechoice = 5
    FL_UndyneExpression = 1
    global.msg[0] = scr_gettext("obj_undynedate_inside_604")
    global.msg[1] = scr_gettext("obj_undynedate_inside_605")
    global.msg[2] = scr_gettext("obj_undynedate_inside_606")
    instance_create(0, 0, obj_dialoguer)
    con = 84.1
}
if (con == 84.1 && instance_exists(OBJ_WRITER) == false)
{
    caster_resume(global.currentsong)
    global.msg[0] = scr_gettext("obj_undynedate_inside_614")
    global.msg[1] = scr_gettext("obj_undynedate_inside_615")
    instance_create(0, 0, obj_dialoguer)
    con = 85
}
if (con == 85 && instance_exists(OBJ_WRITER) == false)
{
    obj_undynespear_anim1.part = 1
    con = 86
}
if (con == 88 && instance_exists(OBJ_WRITER) == false)
{
    instance_create(0, 0, obj_musfadeout)
    con = 88.1
    alarm[4] = 15
}
if (con == 89.1)
{
    FL_AnimationIndex = 0
    undyne.sprite_index = undyne.dtsprite
    global.msg[0] = scr_gettext("obj_undynedate_inside_643")
    global.msg[1] = scr_gettext("obj_undynedate_inside_644")
    global.msg[2] = scr_gettext("obj_undynedate_inside_645")
    global.msg[3] = scr_gettext("obj_undynedate_inside_646")
    global.msg[4] = scr_gettext("obj_undynedate_inside_647")
    global.msg[5] = scr_gettext("obj_undynedate_inside_648")
    global.msg[6] = scr_gettext("obj_undynedate_inside_649")
    global.msg[7] = scr_gettext("obj_undynedate_inside_650")
    global.msg[8] = scr_gettext("obj_undynedate_inside_651")
    global.msg[9] = scr_gettext("obj_undynedate_inside_652")
    global.msg[10] = scr_gettext("obj_undynedate_inside_653")
    global.msg[11] = scr_gettext("obj_undynedate_inside_654")
    global.msg[12] = scr_gettext("obj_undynedate_inside_655")
    global.msg[13] = scr_gettext("obj_undynedate_inside_656")
    global.msg[14] = scr_gettext("obj_undynedate_inside_657")
    global.msg[15] = scr_gettext("obj_undynedate_inside_658")
    global.currentsong = caster_load("music/musicbox.ogg")
    caster_loop(global.currentsong, 0.8, 0.8)
    instance_create(0, 0, obj_dialoguer)
    con = 90
}
if (con == 90 && instance_exists(OBJ_WRITER) == false)
{
    undyne.d = 1
    undyne.depth = (table.depth + 1)
    global.faceemotion = 0
    undyne.sprite_index = undyne.rsprite
    undyne.image_index = 0.25
    undyne.hspeed = 3
    undyne.npcdir = 1
    con = 91
    alarm[4] = 20
}
if (con == 92)
{
    instance_create(0, 0, obj_musfadeout)
    with (undyne)
        scr_npc_halt("r")
    con = 93
    alarm[4] = 60
}
if (con == 94)
{
    undyne.d = 0
    with (undyne)
        scr_npc_halt("d")
    with (undyne)
        npcdir = 1
    global.faceemotion = 1
    global.msc = 0
    global.facechoice = 5
    global.typer = 37
    global.msg[0] = scr_gettext("obj_undynedate_inside_696")
    global.msg[1] = scr_gettext("obj_undynedate_inside_697")
    global.msg[2] = scr_gettext("obj_undynedate_inside_698")
    global.msg[3] = scr_gettext("obj_undynedate_inside_699")
    global.msg[4] = scr_gettext("obj_undynedate_inside_700")
    ggg = instance_create(0, 0, obj_dialoguer)
    ggg.side = 1
    con = 95
}
if (con == 95 && instance_exists(OBJ_WRITER) == false)
{
    with (obj_musfadeout)
        instance_destroy()
    caster_free(all)
    FL_AnimationIndex = 0
    global.currentsong = caster_load("music/undynetruetheme.ogg")
    caster_loop(global.currentsong, 0.9, 1)
    undyne.npcdir = 0
    undyne.fun = true
    undyne.image_index = 0
    undyne.image_speed = 0.5
    undyne.sprite_index = spr_undyne_leap
    con = 96
}
if (con == 96)
{
    if (undyne.image_index >= 3)
        undyne.vspeed = -10
    if (undyne.image_index >= 4)
    {
        undyne.image_speed = 0
        con = 97
        alarm[4] = 30
    }
}
if (con == 98)
{
    undyne.x = 80
    undyne.vspeed = 10
    con = 99
}
if (con == 99)
{
    if (undyne.y >= 5)
    {
        undyne.image_index = 0
        undyne.y = 10
        undyne.vspeed = 0
        snd_play(snd_impact)
        scr_shake(4, 4, 1)
        undyne.vspeed = 0
        teabox2 = instance_create(teabox.x, teabox.y, obj_foodbreak)
        teabox2.sprite_index = spr_teaboxes
        teabox2.breaksprite = spr_teaboxes_break
        teabox2.myh = 1
        teabox2.mya = 4
        with (teabox)
            instance_destroy()
        sugar2 = instance_create(sugar.x, sugar.y, obj_foodbreak)
        sugar2.sprite_index = spr_sugarholder
        sugar2.breaksprite = spr_sugarholder_break
        sugar2.myh = 3
        with (sugar)
            instance_destroy()
        soda2 = instance_create(soda.x, soda.y, obj_foodbreak)
        soda2.sprite_index = spr_soda
        soda2.breaksprite = spr_soda_break
        soda2.mya = -4
        soda2.myh = -1
        soda2.myv = -2
        with (soda)
            instance_destroy()
        hotchocolate2 = instance_create(hotchocolate.x, hotchocolate.y, obj_foodbreak)
        hotchocolate2.sprite_index = spr_hotchocolate
        hotchocolate2.breaksprite = spr_hotchocolate
        hotchocolate2.myh = -1
        hotchocolate2.mya = 3
        with (hotchocolate)
            instance_destroy()
    }
    if (undyne.image_index == 0)
    {
        undyne.image_speed = 0
        con = 100
        alarm[4] = 40
    }
}
if (con == 101)
{
    undyne.sprite_index = spr_undyne_kick
    undyne.image_speed = 0.25
    undyne.hspeed = 5
    con = 102
}
if (con == 102)
{
    if (undyne.x > 180)
        undyne.hspeed -= 0.5
    if (undyne.hspeed == 0)
        con = 103
}
if (con == 103)
{
    with (undyne)
        scr_npc_halt("d")
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_undynedate_inside_833")
    global.msg[1] = scr_gettext("obj_undynedate_inside_834")
    global.msg[2] = scr_gettext("obj_undynedate_inside_835")
    global.msg[3] = scr_gettext("obj_undynedate_inside_836")
    global.msg[4] = scr_gettext("obj_undynedate_inside_837")
    de = instance_create(0, 0, obj_dialoguer)
    de.side = 1
    con = 104
}
if (con == 104 && instance_exists(OBJ_WRITER) == false)
{
    undyne.npcdir = 0
    undyne.fun = true
    undyne.image_index = 0
    undyne.image_speed = 0.5
    undyne.sprite_index = spr_undyne_leap
    con = 106
}
if (con == 106)
{
    if (undyne.image_index >= 3)
        undyne.vspeed = -15
    if (undyne.image_index >= 4)
    {
        undyne.image_speed = 0
        con = 107
        alarm[4] = 7
    }
}
if (con == 108)
{
    undyne.x = (obj_mainchara.x - 18)
    undyne.vspeed = 15
    con = 109
}
if (con == 109)
{
    if (undyne.y >= (obj_mainchara.y - 40))
    {
        undyne.image_index = 0
        undyne.y = (obj_mainchara.y - 25)
        undyne.vspeed = 0
        snd_play(snd_impact)
        scr_shake(4, 4, 1)
        undyne.vspeed = 0
    }
    if (undyne.image_index == 0)
    {
        global.facing = Direction.Left
        undyne.image_speed = 0
        con = 110
        alarm[4] = 15
    }
}
if (con == 111)
{
    undyne.image_index = 0
    undyne.sprite_index = undyne.rsprite
    con = 112
    alarm[4] = 2
}
if (con == 113)
{
    obj_mainchara.visible = false
    undyne.sprite_index = spr_undyne_grableap
    con = 114
    alarm[4] = 5
}
if (con == 115)
{
    undyne.image_speed = 0.5
    if (undyne.image_index == 2)
        snd_play(snd_grab)
    if (undyne.image_index >= 5)
    {
        undyne.image_speed = 0
        con = 116
        alarm[4] = 6
    }
}
if (con == 117)
{
    undyne.image_index = 6
    con = 118
    alarm[4] = 10
}
if (con == 119)
{
    undyne.image_index = 7
    undyne.vspeed = -17
    undyne.gravity = 1.2
    con = 120
    undyne.hspeed = 1
}
if (con == 120)
{
    if (undyne.vspeed > 1 && undyne.y > 30)
    {
        undyne.y = 35
        undyne.gravity = 0
        undyne.vspeed = 0
        undyne.hspeed = 0
        undyne.image_index = 6
        snd_play(snd_impact)
        scr_shake(4, 4, 1)
        con = 121
        alarm[4] = 15
    }
}
if (con == 122)
{
    undyne.image_speed = -0.5
    if (undyne.image_index == 2)
    {
        global.facing = Direction.Up
        snd_play(snd_noise)
        undyne.image_speed = -0.05
    }
    if (undyne.image_index < 1)
    {
        undyne.x -= 2
        obj_mainchara.x = (undyne.x + 20)
        obj_mainchara.y = (undyne.y + 24)
        global.facing = Direction.Up
        obj_mainchara.visible = true
        undyne.sprite_index = undyne.usprite
        undyne.image_index = 0
        undyne.image_speed = 0
        con = 123
        alarm[4] = 10
    }
}
if (con == 124)
{
    undyne.sprite_index = undyne.rtsprite
    undyne.direction = 0
    undyne.fun = false
    undyne.npcdir = 1
    global.facing = Direction.Left
    global.faceemotion = 0
    global.facechoice = 5
    global.msg[0] = scr_gettext("obj_undynedate_inside_1000")
    global.msg[0] = scr_gettext("obj_undynedate_inside_1001")
    instance_create(0, 0, obj_dialoguer)
    con = 125
}
if (con == 125 && instance_exists(OBJ_WRITER) == false)
{
    undyne.hspeed = -2
    con = 126
    alarm[4] = 5
}
if (con == 127)
{
    with (undyne)
        scr_npc_halt("d")
    with (undyne)
        fun = true
    undyne.sprite_index = spr_undyne_stomp
    undyne.image_speed = 0.5
    con = 128
}
if (con == 128)
{
    if (undyne.image_index == 11)
    {
        snd_play(snd_impact)
        scr_shake(3, 3, 1)
    }
    if (undyne.image_index >= 12)
    {
        undyne.image_speed = 0
        veg = scr_marker(195, -20, spr_undyne_veggies)
        veg.depth = 500000
        veg.vspeed = 6
        con = 129
    }
}
if (con == 129)
{
    if (veg.y >= 41)
    {
        snd_play(snd_noise)
        veg.y = 47
        veg.vspeed = 0
        with (undyne)
            scr_npc_halt("r")
        undyne.sprite_index = undyne.rtsprite
        undyne.npcdir = 1
        undyne.fun = false
        con = 130
        alarm[4] = 15
    }
}
if (con == 131)
{
    undyne.npcdir = 0
    global.facing = Direction.Up
    undyne.sprite_index = undyne.rtsprite
    global.faceemotion = 0
    global.msc = 710
    instance_create(0, 0, obj_dialoguer)
    con = 132
}
if (con == 140)
{
    veg.image_index = 1
    con = 141
}
if (con == 141 && instance_exists(OBJ_WRITER) == false)
{
    global.facing = Direction.Up
    undyne.sprite_index = undyne.utsprite
    FL_AnimationIndex = 0
    con = 142
    alarm[4] = 6
}
if (con == 143)
{
    undyne.npcdir = 0
    undyne.fun = true
    undyne.sprite_index = spr_undyne_uppercut
    undyne.image_speed = 0.334
    con = 144
}
if (con == 144)
{
    if (undyne.image_index >= 7)
        con = 147
}
if (con == 148)
{
    veg.image_index = 2
    con = 149
    alarm[4] = 70
}
if (con == 147)
{
    scr_shake(2, 2, 1)
    instance_create(0, 0, obj_flasher)
    snd_play(snd_spearrise)
    con = 148
}
if (con == 149)
{
    if (undyne.image_index >= 8)
        undyne.image_speed = 0
}
if (con == 150)
{
    undyne.sprite_index = spr_undyne_rt_tomato
    obj_mainchara.lsprite = spr_maincharal_tomato
    global.faceemotion = 9
    global.facing = Direction.Left
    global.msc = 0
    FL_UndyneExpression = 2
    global.msg[0] = scr_gettext("obj_undynedate_inside_1128")
    global.msg[1] = scr_gettext("obj_undynedate_inside_1129")
    instance_create(0, 0, obj_dialoguer)
    con = 151
}
if (con == 151 && instance_exists(OBJ_WRITER) == false)
{
    FL_UndyneExpression = 0
    with (undyne)
        scr_npc_halt("d")
    with (undyne)
        fun = true
    undyne.image_index = 0
    undyne.sprite_index = spr_undyne_stomp_tomato
    undyne.image_speed = 0.5
    con = 152
}
if (con == 152)
{
    if (undyne.image_index == 11)
    {
        snd_play(snd_impact)
        scr_shake(3, 3, 1)
    }
    if (undyne.image_index >= 12)
    {
        undyne.image_speed = 0
        pot = scr_marker(140, -20, spr_spaghettipot)
        pot.vspeed = 6
        pot.depth = 500000
        box = scr_marker(160, -20, spr_spaghettibox)
        box.vspeed = 6
        box.depth = 500000
        con = 154
    }
}
if (con == 154)
{
    if (pot.y >= 38)
    {
        snd_play(snd_noise)
        pot.y = 44
        box.y = 40
        pot.vspeed = 0
        box.vspeed = 0
        with (undyne)
            scr_npc_halt("d")
        undyne.npcdir = 1
        undyne.fun = false
        con = 155
        alarm[4] = 10
    }
}
if (con == 156 && instance_exists(OBJ_WRITER) == false)
{
    global.facing = Direction.Left
    undyne.npcdir = 1
    undyne.hspeed = -7
    obj_mainchara.hspeed = -6
    obj_mainchara.image_speed = 0.334
    alarm[4] = 10
    con = 158
}
if (con == 159)
{
    undyne.hspeed = 0
    obj_mainchara.hspeed = 0
    obj_mainchara.image_speed = 0
    with (undyne)
        scr_npc_halt("u")
    con = 160
    alarm[4] = 3
}
if (con == 161)
{
    undyne.sprite_index = undyne.utsprite
    global.facing = Direction.Up
    con = 162
    alarm[4] = 15
}
if (con == 163)
{
    con = 164
    global.msc = 712
    instance_create(0, 0, obj_dialoguer)
}
if (con == 199)
{
    with (box)
        visible = false
    con = 200
}
if (con == 200 && instance_exists(OBJ_WRITER) == false)
{
    FL_AnimationIndex = 0
    global.msc = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_undynedate_inside_1235")
    global.msg[1] = scr_gettext("obj_undynedate_inside_1236")
    global.msg[2] = scr_gettext("obj_undynedate_inside_1237")
    global.msg[3] = scr_gettext("obj_undynedate_inside_1238")
    instance_create(0, 0, obj_dialoguer)
    con = 201
    undyne.sprite_index = undyne.utsprite
    global.facing = Direction.Up
}
if (con == 201 && instance_exists(OBJ_WRITER) == false)
{
    pp = instance_create(0, 0, obj_potstir)
    pp.pot = pot
    con = 202
}
if (con == 210 && instance_exists(OBJ_WRITER) == false)
{
    con = 211
    alarm[4] = 10
}
if (con == 212)
{
    snd_play(snd_arrow)
    spear2 = scr_marker((pot.x + 10), -35, spr_undynespear)
    spear2.image_angle = 270
    spear2.vspeed = 12
    spear2.depth = 900000
    ssine = 0
    con = 213
    stab = 0
}
if (con == 213)
{
    ssine += 1
    spear2.x = (spear2.xstart + (sin((ssine / 3)) * 4))
    if (spear2.vspeed > 0 && spear2.y > (pot.y - 17))
    {
        spear2.vspeed = -12
        snd_play(snd_spearrise)
        if (instance_exists(obj_shaker) == false)
            scr_shake(2, 2, 2)
        stab += 1
        if (stab >= 2)
        {
            pot.sprite_index = spr_spaghettipot_wrecked
            if (stab < 5)
                pot.image_index = 0
            if (stab == 5)
                pot.image_index = 1
            if (stab == 7)
                pot.image_index = 2
            if (stab == 10)
                pot.image_index = 3
        }
    }
    if (spear2.vspeed < 0 && spear2.y < (pot.y - 50))
    {
        spear2.vspeed = 15
        snd_play(snd_arrow)
    }
    if (stab > 10)
        con = 214
}
if (con == 214)
{
    spear2.vspeed = 0
    spear2.image_alpha -= 0.05
    if (spear2.image_alpha < 0.08)
    {
        with (spear2)
            instance_destroy()
        con = 215
        alarm[4] = 20
    }
}
if (con == 216)
{
    global.facechoice = 5
    global.msc = 0
    global.faceemotion = 6
    global.msg[0] = scr_gettext("obj_undynedate_inside_1326")
    global.msg[1] = scr_gettext("obj_undynedate_inside_1328")
    global.msg[2] = scr_gettext("obj_undynedate_inside_1329")
    global.msg[3] = scr_gettext("obj_undynedate_inside_1330")
    global.msg[4] = scr_gettext("obj_undynedate_inside_1331")
    global.msg[5] = scr_gettext("obj_undynedate_inside_1332")
    instance_create(0, 0, obj_dialoguer)
    con = 217
}
if (con == 217 && instance_exists(OBJ_WRITER) == false)
{
    ph = instance_create(0, 0, obj_potheat)
    pot2 = instance_create(pot.x, (pot.y + 3), obj_spaghot)
    with (pot)
        instance_destroy()
    pot = pot2
    ph.pot = pot
    con = 218
}
if (con == 250 && instance_exists(OBJ_WRITER) == false)
{
    caster_free(all)
    snd_play(snd_laz)
    wht = instance_create(0, 0, obj_whitesploder)
    con = 251
    alarm[4] = 40
}
if (con == 252)
{
    blk = instance_create((view_xview_get(0) - 2), -2, obj_npc_marker)
    blk.depth = (wht.depth - 2)
    blk.image_alpha = 0
    blk.visible = true
    blk.image_speed = 0
    blk.sprite_index = spr_pixblk
    blk.image_xscale = 200
    blk.image_yscale = 200
    con = 253
}
if (con == 253)
{
    blk.image_alpha += 0.02
    if (blk.image_alpha >= 1)
    {
        con = 254
        alarm[4] = 60
    }
}
if (con == 255)
{
    global.currentsong = caster_load("music/deeploop2.ogg")
    caster_loop(global.currentsong, 0, 1)
    vol = 0
    potb = scr_marker(pot.x, (pot.y + 2), spr_spaghettipot_burnt)
    potb.image_speed = 0.5
    potb.depth = 300000
    with (pot)
        instance_destroy()
    background_blend_set(0, c_maroon)
    f = scr_marker(60, 140, spr_hearthflame)
    f.image_speed = 0.6
    f.depth = 400000
    f = scr_marker(80, 40, spr_hearthflame)
    f.image_speed = 0.5
    f.depth = 400000
    f = scr_marker(200, 40, spr_hearthflame)
    f.image_speed = 0.4
    f.depth = 400000
    f = scr_marker(220, 100, spr_hearthflame)
    f.image_speed = 0.6
    f.depth = 400000
    f = scr_marker(180, 160, spr_hearthflame)
    f.image_speed = 0.7
    f.depth = 400000
    table.image_blend = c_maroon
    piano.image_blend = c_maroon
    sword.image_blend = c_maroon
    obj_foodbreak.image_blend = c_maroon
    if instance_exists(obj_controlspear)
        obj_controlspear.image_blend = c_maroon
    obj_undynewindow.image_blend = c_maroon
    obj_undynewindow_foreground.image_blend = c_maroon
    obj_glassshard.image_blend = c_maroon
    obj_bonedrawer.image_blend = c_maroon
    with (wht)
        instance_destroy()
    con = 256
}
if (con == 256)
{
    vol += 0.02
    caster_set_volume(global.currentsong, vol)
    blk.image_alpha -= 0.02
    if (blk.image_alpha < 0.03)
    {
        with (blk)
            instance_destroy()
        con = 257
    }
}
if (con == 257)
{
    con = 258
    alarm[4] = 30
}
if (con == 259)
{
    obj_mainchara.lsprite = spr_maincharal_burnt
    undyne.sprite_index = spr_undyne_rt_burnt
    global.facing = Direction.Left
    global.facechoice = 5
    global.msc = 0
    global.faceemotion = 9
    global.msg[0] = scr_gettext("obj_undynedate_inside_1444")
    global.msg[1] = scr_gettext("obj_undynedate_inside_1445")
    instance_create(0, 0, obj_dialoguer)
    con = 260
}
if (con == 260 && instance_exists(OBJ_WRITER) == false)
{
    undyne.sprite_index = undyne.utsprite
    global.facing = Direction.Up
    con = 261
    alarm[4] = 120
}
if (con == 262)
{
    undyne.sprite_index = spr_undyne_rt_burnt
    global.facing = Direction.Left
    global.facechoice = 5
    global.msc = 0
    global.faceemotion = 9
    global.msg[0] = scr_gettext("obj_undynedate_inside_1465")
    global.msg[1] = scr_gettext("obj_undynedate_inside_1466")
    instance_create(0, 0, obj_dialoguer)
    con = 263
}
if (con == 263 && instance_exists(OBJ_WRITER) == false)
{
    undyne.sprite_index = spr_undyne_ut
    global.faceemotion = 7
    global.msg[0] = scr_gettext("obj_undynedate_inside_1475")
    global.msg[1] = scr_gettext("obj_undynedate_inside_1476")
    global.msg[2] = scr_gettext("obj_undynedate_inside_1477")
    global.msg[3] = scr_gettext("obj_undynedate_inside_1478")
    global.msg[4] = scr_gettext("obj_undynedate_inside_1479")
    global.msg[5] = scr_gettext("obj_undynedate_inside_1480")
    global.msg[6] = scr_gettext("obj_undynedate_inside_1481")
    global.msg[7] = scr_gettext("obj_undynedate_inside_1482")
    instance_create(0, 0, obj_dialoguer)
    con = 264
}
if (con == 264 && instance_exists(OBJ_WRITER) == false)
{
    caster_free(all)
    global.msg[0] = scr_gettext("obj_undynedate_inside_1490")
    instance_create(0, 0, obj_dialoguer)
    con = 265
}
if (con == 265 && instance_exists(OBJ_WRITER) == false)
{
    global.mercy = 1
    global.battlegroup = BattleGroup.UndyneFakeFight
    instance_create(0, 0, obj_battler)
    con = 266
}
if (con == 266 && instance_exists(obj_battler) == false)
{
    con = 267
    room_persistent = false
    alarm[4] = 2
}
if (con == 268)
{
    room_persistent = false
    global.phasing = 0
    FL_UnknownBoolean17 = false
    global.mercy = 0
    snd_play(snd_bell)
    room_goto(room_water_undyneyard)
}
if (con == 300 && instance_exists(OBJ_WRITER) == false)
{
    global.faceemotion = 0
    instance_create(0, 0, obj_musfadeout)
    con = 301
    alarm[4] = 15
}
if (con == 302)
{
    undyne.npcdir = 1
    undyne.hspeed = 0
    undyne.fun = false
    undyne.vspeed = -3
    alarm[4] = 17
    con = 303
}
if (con == 304)
{
    undyne.hspeed = 3
    undyne.vspeed = 0
    con = 305
    alarm[4] = 32
}
if (con == 306)
{
    with (undyne)
        scr_npc_halt("u")
    con = 307
    alarm[4] = 20
}
if (con == 308)
{
    undyne.npcdir = 1
    undyne.hspeed = -3
    undyne.fun = false
    undyne.vspeed = 0
    alarm[4] = 32
    con = 309
}
if (con == 310)
{
    with (undyne)
        scr_npc_halt("u")
    con = 311
    alarm[4] = 20
}
if (con == 312)
{
    snd_play(snd_splash)
    con = 313
    alarm[4] = 30
}
if (con == 314)
{
    snd_play(snd_noise)
    con = 315
    alarm[4] = 30
}
if (con == 316)
{
    undyne.npcdir = 1
    undyne.fun = false
    undyne.hspeed = 3
    undyne.vspeed = 0
    con = 317
    alarm[4] = 14
}
if (con == 318)
{
    with (undyne)
        scr_npc_halt("u")
    con = 319
    alarm[4] = 15
}
if (con == 320)
{
    con = 321
    snd_play(snd_noise)
    teapot = scr_marker(167, 49, spr_undteapot)
    teapot.image_speed = 0
    with (teapot)
        depth = (obj_undyne_actor.depth + 1)
    alarm[4] = 30
}
if (con == 322)
{
    snd_play(snd_noise)
    con = 323
    alarm[4] = 30
}
if (con == 324)
{
    con = 325
    with (undyne)
        scr_npc_halt("d")
    global.faceemotion = 9
    alarm[4] = 20
}
if (con == 326)
{
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 9
    global.msc = 0
    global.msg[0] = scr_gettext("obj_undynedate_inside_1641")
    con = 327
    dg = instance_create(0, 0, obj_dialoguer)
    dg.side = 1
}
if (con == 327 && instance_exists(OBJ_WRITER) == false)
{
    global.faceemotion = 0
    with (undyne)
        scr_npc_halt("u")
    con = 328
    alarm[4] = 180
}
if (con == 329)
{
    teapot.image_speed = 1
    snd_play(snd_slidewhist)
    con = 330
    alarm[4] = 60
}
if (con == 331)
{
    with (undyne)
        scr_npc_halt("d")
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 9
    global.msc = 0
    global.msg[0] = scr_gettext("obj_undynedate_inside_1671")
    con = 332
    dg = instance_create(0, 0, obj_dialoguer)
    dg.side = 1
}
if (con == 332 && instance_exists(OBJ_WRITER) == false)
{
    global.faceemotion = 0
    undyne.npcdir = 1
    undyne.fun = false
    undyne.hspeed = -3
    undyne.vspeed = 0
    con = 334
    alarm[4] = 14
}
if (con == 335)
{
    with (undyne)
        scr_npc_halt("u")
    con = 337
    alarm[4] = 20
}
if (con == 338)
{
    teacup.visible = false
    undyne.npcdir = 1
    undyne.fun = false
    undyne.hspeed = 3
    undyne.vspeed = 0
    con = 339
    alarm[4] = 17
}
if (con == 340)
{
    with (undyne)
        scr_npc_halt("u")
    con = 341
    alarm[4] = 20
}
if (con == 342)
{
    teapot.image_index = 0
    teapot.image_speed = 0
    snd_play(snd_splash)
    con = 343
    alarm[4] = 50
}
if (con == 344)
{
    undyne.npcdir = 1
    undyne.fun = false
    undyne.hspeed = 0
    undyne.vspeed = 3
    con = 345
    alarm[4] = 28
}
if (con == 346)
{
    undyne.npcdir = 1
    undyne.fun = false
    undyne.hspeed = 3
    undyne.vspeed = 0
    con = 347
    alarm[4] = 10
}
if (con == 348)
{
    with (undyne)
        scr_npc_halt("u")
    con = 349
    alarm[4] = 20
}
if (con == 350)
{
    teacup.x = (obj_mainchara.x - 6)
    teacup.y = (obj_mainchara.y + 5)
    teacup.visible = true
    teacup.depth = (undyne.depth + 10)
    snd_play(snd_noise)
    con = 351
    alarm[4] = 30
}
if (con == 352)
{
    with (undyne)
        scr_npc_halt("r")
    undyne.sprite_index = spr_undyne_rt
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 0
    global.msc = 0
    global.msg[0] = scr_gettext("obj_undynedate_inside_1771")
    con = 352.5
    instance_create(0, 0, obj_dialoguer)
}
if (con == 352.5 && instance_exists(OBJ_WRITER) == false)
{
    undyne.npcdir = 1
    undyne.fun = false
    undyne.hspeed = -3
    undyne.vspeed = 0
    con = 353
    alarm[4] = 10
}
if (con == 354)
{
    undyne.npcdir = 1
    undyne.fun = false
    undyne.hspeed = 0
    undyne.vspeed = -3
    con = 355
    alarm[4] = 16
}
if (con == 356)
{
    undyne.npcdir = 1
    undyne.fun = false
    undyne.hspeed = 3
    undyne.vspeed = 0
    con = 357
    alarm[4] = 12
    undyne.d = 1
    undyne.depth = (table.depth + 1)
}
if (con == 358)
{
    with (undyne)
        scr_npc_halt("d")
    con = 359
    alarm[4] = 20
}
if (con == 360)
{
    undyne.sprite_index = spr_undyne_d_sit
    undyne.y += 15
    con = 361
    alarm[4] = 30
}
if (con == 362)
{
    FL_AnimationIndex = 0
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 9
    global.msc = 0
    global.msg[0] = scr_gettext("obj_undynedate_inside_1833")
    con = 363
    instance_create(0, 0, obj_dialoguer)
}
if (con == 363 && instance_exists(OBJ_WRITER) == false)
{
    con = 364
    alarm[4] = 90
}
if (con == 365)
{
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 1
    global.msc = 0
    global.msg[0] = scr_gettext("obj_undynedate_inside_1850")
    global.msg[1] = scr_gettext("obj_undynedate_inside_1851")
    global.msg[2] = scr_gettext("obj_undynedate_inside_1852")
    global.msg[3] = scr_gettext("obj_undynedate_inside_1853")
    scr_undface(4, 9)
    global.msg[5] = scr_gettext("obj_undynedate_inside_1855")
    global.msg[6] = scr_gettext("obj_undynedate_inside_1856")
    con = 366
    instance_create(0, 0, obj_dialoguer)
}
if (con == 366 && instance_exists(OBJ_WRITER) == false)
{
    con = 366.1
    alarm[4] = 80
}
if (con == 367.1)
{
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 1
    global.msc = 0
    global.msg[0] = scr_gettext("obj_undynedate_inside_1873")
    global.msg[1] = scr_gettext("obj_undynedate_inside_1874")
    global.msg[2] = scr_gettext("obj_undynedate_inside_1875")
    global.msg[3] = scr_gettext("obj_undynedate_inside_1876")
    global.msg[4] = scr_gettext("obj_undynedate_inside_1877")
    global.msg[5] = scr_gettext("obj_undynedate_inside_1878")
    global.msg[6] = scr_gettext("obj_undynedate_inside_1879")
    global.msg[7] = scr_gettext("obj_undynedate_inside_1880")
    con = 367
    instance_create(0, 0, obj_dialoguer)
}
if (con == 367 && instance_exists(OBJ_WRITER) == false)
{
    con = 368
    alarm[4] = 60
}
if (con == 369 && instance_exists(OBJ_WRITER) == false)
{
    FL_AnimationIndex = 0
    global.msg[0] = scr_gettext("obj_undynedate_inside_1898")
    global.msg[1] = scr_gettext("obj_undynedate_inside_1899")
    global.msg[2] = scr_gettext("obj_undynedate_inside_1900")
    global.msg[3] = scr_gettext("obj_undynedate_inside_1901")
    global.msg[4] = scr_gettext("obj_undynedate_inside_1902")
    global.msg[5] = scr_gettext("obj_undynedate_inside_1903")
    global.msg[6] = scr_gettext("obj_undynedate_inside_1904")
    global.msg[7] = scr_gettext("obj_undynedate_inside_1905")
    global.msg[8] = scr_gettext("obj_undynedate_inside_1906")
    global.msg[9] = scr_gettext("obj_undynedate_inside_1907")
    global.msg[10] = scr_gettext("obj_undynedate_inside_1908")
    global.msg[11] = scr_gettext("obj_undynedate_inside_1909")
    global.msg[12] = scr_gettext("obj_undynedate_inside_1910")
    global.msg[13] = scr_gettext("obj_undynedate_inside_1911")
    global.msg[14] = scr_gettext("obj_undynedate_inside_1912")
    global.msg[15] = scr_gettext("obj_undynedate_inside_1913")
    global.msg[16] = scr_gettext("obj_undynedate_inside_1914")
    global.currentsong = caster_load("music/musicbox.ogg")
    caster_loop(global.currentsong, 0.8, 0.8)
    instance_create(0, 0, obj_dialoguer)
    con = 370
}
if (con == 370 && instance_exists(OBJ_WRITER) == false)
{
    con = 371
    alarm[4] = 70
}
if (con == 372)
{
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 1
    global.msc = 0
    global.msg[0] = scr_gettext("obj_undynedate_inside_1935")
    global.msg[1] = scr_gettext("obj_undynedate_inside_1936")
    global.msg[2] = scr_gettext("obj_undynedate_inside_1937")
    global.msg[3] = scr_gettext("obj_undynedate_inside_1938")
    global.msg[4] = scr_gettext("obj_undynedate_inside_1939")
    global.msg[5] = scr_gettext("obj_undynedate_inside_1940")
    global.msg[6] = scr_gettext("obj_undynedate_inside_1941")
    global.msg[7] = scr_gettext("obj_undynedate_inside_1942")
    global.msg[8] = scr_gettext("obj_undynedate_inside_1943")
    global.msg[9] = scr_gettext("obj_undynedate_inside_1944")
    global.msg[10] = scr_gettext("obj_undynedate_inside_1945")
    global.msg[11] = scr_gettext("obj_undynedate_inside_1946")
    global.msg[12] = scr_gettext("obj_undynedate_inside_1947")
    global.msg[13] = scr_gettext("obj_undynedate_inside_1948")
    global.msg[14] = scr_gettext("obj_undynedate_inside_1949")
    global.msg[15] = scr_gettext("obj_undynedate_inside_1950")
    instance_create(0, 0, obj_dialoguer)
    con = 373
}
if (con == 373 && instance_exists(OBJ_WRITER) == false)
{
    instance_create(0, 0, obj_musfadeout)
    con = 375
    alarm[4] = 30
}
if (con == 376)
{
    bcbc = instance_create(undyne.x, undyne.y, obj_cosmeticblcon)
    con = 377
    alarm[4] = 30
}
if (con == 378)
{
    with (bcbc)
        instance_destroy()
    con = 379
    alarm[4] = 20
}
if (con == 380)
{
    global.msg[0] = scr_gettext("obj_undynedate_inside_1978")
    global.msg[1] = scr_gettext("obj_undynedate_inside_1979")
    global.msg[2] = scr_gettext("obj_undynedate_inside_1980")
    con = 381
    instance_create(0, 0, obj_dialoguer)
}
if (con == 381 && instance_exists(OBJ_WRITER) == false)
{
    undyne.y -= 15
    undyne.npcdir = 1
    undyne.fun = false
    undyne.hspeed = -3
    undyne.vspeed = 0
    con = 383
    alarm[4] = 17
}
if (con == 384)
{
    with (undyne)
        scr_npc_halt("l")
    con = 385
    alarm[4] = 90
}
if (con == 386)
    con = 94
