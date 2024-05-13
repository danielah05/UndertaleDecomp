if (con == 1)
{
    con = 2
    alarm[4] = 40
}
if (con == 2)
    global.facing = Direction.Up
if (con == 3)
{
    obj_mainchara.vspeed = -1
    obj_mainchara.image_speed = 0.1
    con = 4
    alarm[4] = 100
}
if (con == 5)
{
    obj_mainchara.image_speed = 0
    obj_mainchara.vspeed = 0
    con = 6
    alarm[4] = 30
}
if (con == 7)
{
    remy = view_yview_get(0)
    obj_mainchara.cutscene = true
    view_target_set(0, noone)
    con = 8
    alarm[4] = 90
}
if (con == 8)
    view_yview_set(0, (view_yview_get(0) - 1))
if (con == 9)
{
    con = 10
    alarm[4] = 50
}
if (con == 11)
{
    global.facechoice = 0
    global.typer = 60
    global.msc = 0
    global.msg[0] = scr_gettext("obj_asgoremeet_event_131")
    global.msg[1] = scr_gettext("obj_asgoremeet_event_132")
    global.msg[2] = scr_gettext("obj_asgoremeet_event_133")
    global.msg[3] = scr_gettext("obj_asgoremeet_event_134")
    con = 12
    if (scr_murderlv() >= 16)
    {
        global.msg[0] = scr_gettext("obj_asgoremeet_event_138")
        con = 99
    }
    instance_create(0, 0, obj_dialoguer)
}
if (con == 12 && instance_exists(OBJ_WRITER) == false)
{
    asg.image_speed = 0.2
    con = 13
    alarm[4] = 50
}
if (con == 14)
{
    asg.image_speed = 0
    asg.image_index = 0
    con = 15
    alarm[4] = 30
}
if (con == 16)
{
    global.msg[0] = scr_gettext("obj_asgoremeet_event_162")
    con = 17
    instance_create(0, 0, obj_dialoguer)
}
if (con == 17 && instance_exists(OBJ_WRITER) == false)
{
    con = 18
    alarm[4] = 20
}
if (con == 19)
{
    asg.sprite_index = asg.rsprite
    con = 20
    alarm[4] = 35
}
if (con == 21)
{
    asg.sprite_index = asg.dtsprite
    con = 22
    alarm[4] = 20
}
if (con == 23)
{
    global.facechoice = 7
    global.msc = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_asgoremeet_event_193")
    instance_create(0, 0, obj_dialoguer)
    con = 24
}
if (con == 24 && instance_exists(OBJ_WRITER) == false)
{
    con = 24.1
    caster_free(all)
    with (obj_birbnoise)
        instance_destroy()
    global.currentsong = caster_load("music/smallshock.ogg")
    alarm[4] = 15
    asg.sprite_index = spr_asgore_d_shock
    asg.vspeed = -1
    asg.image_speed = 0.2
}
if (con == 25.1)
{
    asg.vspeed = 0
    asg.image_index = 0
    asg.image_speed = 0
    con = 25
    alarm[4] = 80
}
if (con == 26)
{
    asg.sprite_index = spr_asgore_dt_shock
    caster_loop(global.currentsong, 1, 1)
    global.faceemotion = 1
    global.msg[0] = scr_gettext("obj_asgoremeet_event_224")
    instance_create(0, 0, obj_dialoguer)
    con = 27
}
if (con == 27 && instance_exists(OBJ_WRITER) == false)
{
    asg.sprite_index = asg.rsprite
    con = 28
    alarm[4] = 110
}
if (con == 29)
{
    asg.sprite_index = asg.dtsprite
    con = 30
    alarm[4] = 30
}
if (con == 31)
{
    asg.sprite_index = asg.dtsprite
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_asgoremeet_event_247")
    global.msg[1] = scr_gettext("obj_asgoremeet_event_248")
    global.msg[2] = scr_gettext("obj_asgoremeet_event_249")
    global.msg[3] = scr_gettext("obj_asgoremeet_event_250")
    instance_create(0, 0, obj_dialoguer)
    con = 32
}
if (con == 32 && instance_exists(OBJ_WRITER) == false)
{
    con = 33
    alarm[4] = 60
}
if (con == 34)
{
    asg.sprite_index = asg.lsprite
    asg.image_speed = 0.2
    asg.hspeed = -1
    alarm[4] = 80
    con = 35
}
if (con == 36)
{
    asg.hspeed = 0
    asg.image_speed = 0
    con = 37
    alarm[4] = 70
}
if (con == 38)
{
    asg.sprite_index = asg.dtsprite
    asg.image_index = 0
    con = 39
    alarm[4] = 30
}
if (con == 40)
{
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_asgoremeet_event_289")
    global.msg[1] = scr_gettext("obj_asgoremeet_event_290")
    global.msg[2] = scr_gettext("obj_asgoremeet_event_291")
    instance_create(0, 0, obj_dialoguer)
    con = 41
}
if (con == 41 && instance_exists(OBJ_WRITER) == false)
{
    asg.sprite_index = asg.lsprite
    con = 42
    alarm[4] = 120
}
if (con == 43)
{
    asg.sprite_index = spr_asgore_dt_sad
    con = 44
    alarm[4] = 60
}
if (con == 45)
{
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_asgoremeet_event_313")
    global.msg[1] = scr_gettext("obj_asgoremeet_event_314")
    global.msg[2] = scr_gettext("obj_asgoremeet_event_315")
    instance_create(0, 0, obj_dialoguer)
    con = 46
}
if (con == 46 && instance_exists(OBJ_WRITER) == false)
{
    asg.sprite_index = asg.usprite
    asg.image_speed = 0.25
    asg.vspeed = -2
    con = 47
    alarm[4] = 30
}
if (con == 48)
{
    if (view_yview_get(0) < remy)
        view_yview_set(0, (view_yview_get(0) + 2))
    else
    {
        view_yview_set(0, remy)
        obj_mainchara.cutscene = false
        view_target_set(0, obj_mainchara)
        global.interact = 0
        with (asg)
            instance_destroy()
        instance_destroy()
        global.plot = 206
        con = 49
    }
}
if (con == 99 && instance_exists(OBJ_WRITER) == false)
{
    asg.sprite_index = asg.rtsprite
    con = 100
    alarm[4] = 10
}
if (con == 101)
{
    asg.sprite_index = asg.dtsprite
    con = 102
    alarm[4] = 10
}
if (con == 103)
{
    global.facechoice = 7
    global.msc = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_asgoremeet_event_369")
    global.msg[1] = scr_gettext("obj_asgoremeet_event_370")
    global.msg[2] = scr_gettext("obj_asgoremeet_event_371")
    global.msg[3] = scr_gettext("obj_asgoremeet_event_372")
    global.msg[4] = scr_gettext("obj_asgoremeet_event_373")
    global.msg[5] = scr_gettext("obj_asgoremeet_event_374")
    global.msg[6] = scr_gettext("obj_asgoremeet_event_375")
    instance_create(0, 0, obj_dialoguer)
    con = 111
}
if (con == 111 && instance_exists(OBJ_WRITER) == false)
{
    global.battlegroup = BattleGroup.AsgoreIntro
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    con = 112
}
