if (con == 1)
{
    global.phasing = 1
    FL_UnknownBoolean17 = true
    global.interact = 1
    obj_mainchara.x = 140
    obj_mainchara.y = -20
    obj_mainchara.vspeed = 3
    con = 2
    turntimer = 0
}
if (con == 2)
{
    turntimer += 1
    if (turntimer > 15)
    {
        turntimer = 0
        global.facing += 1
        if (global.facing > 3)
            global.facing = Direction.Down
    }
    if (obj_mainchara.y > 100)
    {
        con = 3
        obj_mainchara.vspeed = 0
        alarm[4] = 23
        mett = instance_create(140, -20, obj_mettaton_flightdress)
        mett.vspeed = 3
    }
}
if (con == 4)
{
    mett.vspeed = 0
    con = 5
    alarm[4] = 20
}
if (con == 6)
{
    global.msc = 0
    global.typer = 27
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_multitileevent_121")
    global.msg[1] = scr_gettext("obj_multitileevent_122")
    global.msg[2] = scr_gettext("obj_multitileevent_123")
    dia = instance_create(0, 0, obj_dialoguer)
    dia.side = 1
    con = 7
}
if (con == 7 && instance_exists(OBJ_WRITER) == false)
{
    view_target_set(0, noone)
    obj_mainchara.cutscene = true
    view_xview_set(0, (view_xview_get(0) + 5))
    if (view_xview_get(0) >= 96)
    {
        view_xview_set(0, 100)
        con = 8
        alarm[4] = 15
    }
}
if (con == 9)
{
    global.msg[0] = scr_gettext("obj_multitileevent_144")
    global.msg[1] = scr_gettext("obj_multitileevent_145")
    global.msg[2] = scr_gettext("obj_multitileevent_146")
    global.msg[3] = scr_gettext("obj_multitileevent_147")
    global.msg[4] = scr_gettext("obj_multitileevent_148")
    global.msg[5] = scr_gettext("obj_multitileevent_149")
    global.msg[6] = scr_gettext("obj_multitileevent_150")
    instance_create(0, 0, obj_dialoguer)
    con = 10
}
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
    con = 11
    alarm[4] = 40
}
if (con == 12)
{
    global.msg[0] = scr_gettext("obj_multitileevent_163")
    global.msg[1] = scr_gettext("obj_multitileevent_164")
    instance_create(0, 0, obj_dialoguer)
    con = 13
}
if (con == 13 && instance_exists(OBJ_WRITER) == false)
{
    view_xview_set(0, (view_xview_get(0) - 5))
    if (view_xview_get(0) <= 4)
    {
        view_xview_set(0, 0)
        con = 14
        alarm[4] = 20
    }
}
if (con == 15)
{
    snd_play(snd_noise)
    flame1 = instance_create(40, 20, obj_flamedrawer)
    flame2 = instance_create(1160, 20, obj_flamedrawer)
    con = 16
    alarm[4] = 30
}
if (con == 17)
{
    global.msg[0] = scr_gettext("obj_multitileevent_192")
    global.msg[1] = scr_gettext("obj_multitileevent_193")
    global.msg[2] = scr_gettext("obj_multitileevent_194")
    global.msg[3] = scr_gettext("obj_multitileevent_195")
    instance_create(0, 0, obj_dialoguer)
    con = 18
}
if (con == 18 && instance_exists(OBJ_WRITER) == false)
{
    racesong = caster_load("music/operatile.ogg")
    with (obj_mettaton_flightdress)
    {
        middle = 1
        event_user(1)
    }
    caster_play(racesong, 1, 1)
    cooltimer = 900
    instance_create(0, 0, obj_tilehud)
    flavor = 0
    global.phasing = 0
    obj_mainchara.cutscene = false
    view_target_set(0, obj_mainchara)
    global.interact = 0
    con = 20
}
if (con == 20)
{
    if (instance_exists(obj_tileguy) == false && obj_mainchara.x > (room_width / 2))
    {
        global.interact = 1
        con = 75
    }
    cooltimer -= 1
    if (cooltimer == 0)
        con = 30
}
if (con == 30)
{
    with (obj_insidiousconveyor)
    {
        collide = 0
        active = -1
    }
    obj_tileguytileparent.grey = 1
    with (obj_mettaton_flightdress)
        middle = 2
    global.facing = Direction.Up
    obj_mainchara.visible = true
    global.interact = 1
    if instance_exists(obj_tileguy)
    {
        with (obj_tileguy)
            instance_destroy()
    }
    if (flame1.x < (view_xview_get(0) - 20))
        flame1.x = (view_xview_get(0) - 20)
    if (flame2.x > (view_xview_get(0) + view_wview_get(0)))
        flame2.x = (view_xview_get(0) + view_wview_get(0))
    con = 31
    alarm[4] = 60
}
if (con == 31)
{
    global.interact = 1
    global.facing = Direction.Up
}
if (con == 32)
{
    with (obj_tilehud)
        finished = true
    global.typer = 27
    global.facechoice = 0
    global.msc = 0
    global.msg[0] = scr_gettext("obj_multitileevent_279")
    instance_create(0, 0, obj_dialoguer)
    con = 33
}
if (con == 33 && instance_exists(OBJ_WRITER) == false)
{
    con = 34
    alarm[4] = 40
}
if (con == 34)
{
    if (flame1.x < (obj_mainchara.x - 20))
        flame1.x += 2
    if (flame2.x > (obj_mainchara.x + 20))
        flame2.x -= 2
}
if (con == 35)
{
    global.msg[0] = scr_gettext("obj_multitileevent_304")
    instance_create(0, 0, obj_dialoguer)
    con = 36
}
if (con == 36 && instance_exists(OBJ_WRITER) == false)
{
    con = 37
    alarm[4] = 40
}
if (con == 37 && instance_exists(OBJ_WRITER) == false)
{
    if (flame1.x < (obj_mainchara.x - 20))
        flame1.x += 1
    if (flame2.x > (obj_mainchara.x + 20))
        flame2.x -= 1
}
if (con == 38)
{
    global.msg[0] = scr_gettext("obj_multitileevent_330")
    instance_create(0, 0, obj_dialoguer)
    con = 39
}
if (con == 39 && instance_exists(OBJ_WRITER) == false)
{
    con = 40
    alarm[4] = 40
}
if (con == 40 && instance_exists(OBJ_WRITER) == false)
{
    if (flame1.x < (obj_mainchara.x - 20))
        flame1.x += 0.5
    if (flame2.x > (obj_mainchara.x + 20))
        flame2.x -= 0.5
}
if (con == 41)
{
    global.msg[0] = scr_gettext("obj_multitileevent_356")
    instance_create(0, 0, obj_dialoguer)
    con = 42
}
if (con == 42 && instance_exists(OBJ_WRITER) == false)
{
    con = 43
    alarm[4] = 40
}
if (con == 43 && instance_exists(OBJ_WRITER) == false)
{
    if (flame1.x < (obj_mainchara.x - 20))
        flame1.x += 0.5
    if (flame2.x > (obj_mainchara.x + 20))
        flame2.x -= 0.5
}
if (con == 44)
{
    global.msg[0] = scr_gettext("obj_multitileevent_382")
    instance_create(0, 0, obj_dialoguer)
    con = 45
}
if (con == 45 && instance_exists(OBJ_WRITER) == false)
{
    con = 46
    alarm[4] = 90
}
if (con == 46 && instance_exists(OBJ_WRITER) == false)
{
    if (flame1.x < (obj_mainchara.x - 20))
        flame1.x += 0.5
    if (flame2.x > (obj_mainchara.x + 20))
        flame2.x -= 0.5
}
if (con == 47)
{
    global.msg[0] = scr_gettext("obj_multitileevent_409")
    instance_create(0, 0, obj_dialoguer)
    con = 48
}
if (con == 48 && instance_exists(OBJ_WRITER) == false)
{
    con = 49
    alarm[4] = 20
}
if (con == 50)
{
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 6
    snd_play(snd_phone)
    global.msg[0] = scr_gettext("obj_multitileevent_426")
    global.msg[1] = scr_gettext("obj_multitileevent_427")
    global.msg[2] = scr_gettext("obj_multitileevent_428")
    global.msg[3] = scr_gettext("obj_multitileevent_429")
    instance_create(0, 0, obj_dialoguer)
    con = 51
}
if (con == 51 && instance_exists(OBJ_WRITER) == false)
{
    snd_play(snd_noise)
    with (flame1)
        instance_destroy()
    with (flame2)
        instance_destroy()
    con = 52
    alarm[4] = 30
}
if (con == 53)
{
    global.facechoice = 0
    global.typer = 27
    global.msg[0] = scr_gettext("obj_multitileevent_447")
    global.msg[1] = scr_gettext("obj_multitileevent_448")
    instance_create(0, 0, obj_dialoguer)
    con = 54
}
if (con == 54 && instance_exists(OBJ_WRITER) == false)
{
    con = 55
    alarm[4] = 90
}
if (con == 56)
{
    global.faceemotion = 5
    global.facechoice = 0
    global.typer = 27
    global.msg[0] = scr_gettext("obj_multitileevent_464")
    global.msg[1] = scr_gettext("obj_multitileevent_465")
    global.msg[2] = scr_gettext("obj_multitileevent_466")
    global.msg[3] = scr_gettext("obj_multitileevent_467")
    global.msg[4] = scr_gettext("obj_multitileevent_468")
    global.msg[5] = scr_gettext("obj_multitileevent_469")
    global.msg[6] = scr_gettext("obj_multitileevent_470")
    global.msg[7] = scr_gettext("obj_multitileevent_471")
    global.msg[8] = scr_gettext("obj_multitileevent_472")
    global.msg[9] = scr_gettext("obj_multitileevent_473")
    global.msg[10] = scr_gettext("obj_multitileevent_474")
    global.msg[11] = scr_gettext("obj_multitileevent_475")
    global.msg[12] = scr_gettext("obj_multitileevent_476")
    global.msg[13] = scr_gettext("obj_multitileevent_477")
    if (FL_SteppedOnGreenTile == 0)
    {
        global.msg[12] = scr_gettext("obj_multitileevent_480")
        global.msg[13] = scr_gettext("obj_multitileevent_481")
        global.msg[14] = scr_gettext("obj_multitileevent_482")
        global.msg[15] = scr_gettext("obj_multitileevent_483")
        global.msg[16] = scr_gettext("obj_multitileevent_484")
        global.msg[17] = scr_gettext("obj_multitileevent_485")
        global.msg[18] = scr_gettext("obj_multitileevent_486")
    }
    instance_create(0, 0, obj_dialoguer)
    con = 55.1
}
if (con == 55.1 && instance_exists(OBJ_WRITER) == false)
{
    caster_free(racesong)
    con = 56.1
    alarm[4] = 20
    mett.vspeed = 3
    snd_play(snd_break2)
}
if (con == 57.1 && instance_exists(OBJ_WRITER) == false)
{
    con = 58
    global.battlegroup = BattleGroup.MettatonSecond
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    talkedto = 0
    alarm[4] = 32
}
if (con == 58 && global.interact == 0)
    global.interact = 1
if (con == 59)
{
    if instance_exists(obj_mettaton_flightdress)
    {
        with (obj_mettaton_flightdress)
            instance_destroy()
    }
    obj_mainchara.cutscene = false
    view_target_set(0, obj_mainchara)
    global.interact = 1
    if (global.interact == 0)
        global.interact = 1
    con = 60
    alarm[4] = 15
}
if (con == 60)
    global.interact = 1
if (con == 61)
{
    global.mercy = 0
    if (global.interact == 0)
        global.interact = 1
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 690
    global.facing = Direction.Down
    snd_play(snd_phone)
    instance_create(0, 0, obj_dialoguer)
    con = 62
}
if (con == 62 && instance_exists(OBJ_WRITER) == false)
{
    if instance_exists(obj_mainchara)
    {
        if (obj_mainchara.x >= 340)
            flowey = instance_create(100, 120, obj_stalkerflowey)
    }
    global.mercy = 0
    global.border = 0
    global.currentsong = caster_load("music/anothermedium.ogg")
    caster_loop(global.currentsong, 1, 1)
    global.interact = 0
    FL_UnknownBoolean17 = false
    global.plot = 168
    instance_destroy()
}
if (con == 75)
{
    with (obj_mettaton_flightdress)
        middle = 2
    obj_mettaton_flightdress.sing = -1
    caster_free(all)
    obj_tileguytileparent.grey = 1
    snd_play(snd_dumbvictory)
    global.interact = 1
    con = 76
    alarm[4] = 30
}
if (con == 76)
    global.interact = 1
if (con == 77)
{
    with (obj_tilehud)
        finished = true
    global.typer = 27
    global.facechoice = 0
    global.msc = 0
    FL_CompletedTilePuzzle = 1
    global.msg[0] = scr_gettext("obj_multitileevent_592")
    global.msg[1] = scr_gettext("obj_multitileevent_593")
    global.msg[2] = scr_gettext("obj_multitileevent_594")
    instance_create(0, 0, obj_dialoguer)
    con = 78
}
if (con == 78 && instance_exists(OBJ_WRITER) == false)
{
    snd_play(snd_noise)
    with (flame1)
        instance_destroy()
    with (flame2)
        instance_destroy()
    con = 79
    alarm[4] = 30
}
if (con == 80)
{
    global.facechoice = 0
    global.typer = 27
    global.msc = 0
    global.msg[0] = scr_gettext("obj_multitileevent_614")
    global.msg[1] = scr_gettext("obj_multitileevent_615")
    global.msg[2] = scr_gettext("obj_multitileevent_616")
    global.msg[3] = scr_gettext("obj_multitileevent_617")
    global.msg[4] = scr_gettext("obj_multitileevent_618")
    global.msg[5] = scr_gettext("obj_multitileevent_619")
    global.msg[6] = scr_gettext("obj_multitileevent_620")
    instance_create(0, 0, obj_dialoguer)
    con = 81
}
if (con == 81 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 6
    snd_play(snd_phone)
    global.msg[0] = scr_gettext("obj_multitileevent_631")
    global.msg[1] = scr_gettext("obj_multitileevent_632")
    global.msg[2] = scr_gettext("obj_multitileevent_633")
    global.msg[3] = scr_gettext("obj_multitileevent_634")
    global.msg[4] = scr_gettext("obj_multitileevent_635")
    global.msg[5] = scr_gettext("obj_multitileevent_636")
    global.msg[6] = scr_gettext("obj_multitileevent_637")
    global.msg[7] = scr_gettext("obj_multitileevent_638")
    global.msg[8] = scr_gettext("obj_multitileevent_639")
    global.msg[9] = scr_gettext("obj_multitileevent_640")
    global.msg[10] = scr_gettext("obj_multitileevent_641")
    global.msg[11] = scr_gettext("obj_multitileevent_642")
    global.msg[12] = scr_gettext("obj_multitileevent_643")
    global.msg[13] = scr_gettext("obj_multitileevent_644")
    global.msg[14] = scr_gettext("obj_multitileevent_645")
    global.msg[15] = scr_gettext("obj_multitileevent_646")
    global.msg[16] = scr_gettext("obj_multitileevent_647")
    global.msg[17] = scr_gettext("obj_multitileevent_648")
    global.msg[18] = scr_gettext("obj_multitileevent_649")
    global.msg[19] = scr_gettext("obj_multitileevent_650")
    instance_create(0, 0, obj_dialoguer)
    con = 55.1
}
