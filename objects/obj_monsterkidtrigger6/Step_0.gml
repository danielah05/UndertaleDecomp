if (con == 0 && instance_exists(obj_mainchara))
{
    if (obj_mainchara.x > 120)
    {
        with (mkid)
        {
            follow = 99
            move_towards_point(320, 100, 4)
            sprite_index = rsprite
            image_speed = 0.25
        }
        con = 1
    }
}
if (con == 1)
{
    with (mkid)
        sprite_index = rsprite
    ganer += 0.334
    if instance_exists(mkid)
        mkid.image_index = ganer
    if (mkid.x >= 316)
    {
        mkid2 = mkid
        mkid = instance_create(mkid2.x, mkid2.y, obj_townnpc_monsterkid1)
        mkid.direction = 0
        with (mkid)
            sprite_index = spr_mkid_rt
        with (mkid2)
            instance_destroy()
        con = 2
    }
}
if (con == 4)
{
    con = 5
    alarm[4] = 120
}
if (con == 6 && instance_exists(OBJ_WRITER) == false && global.interact == 0)
{
    unbuffer += 1
    with (obj_mainchara)
        uncan = 1
}
else if (con == 6)
{
    unbuffer = 0
    with (obj_mainchara)
        uncan = 0
}
if (con == 6 && instance_exists(OBJ_WRITER) == false && global.interact == 0 && unbuffer >= 4)
{
    with (obj_mainchara)
        uncan = 1
    with (obj_dialoguer)
        instance_destroy()
    with (OBJ_WRITER)
        instance_destroy()
    with (obj_choicer)
        instance_destroy()
    global.interact = 1
    with (mkid)
    {
        fun = true
        scr_npc_watch(0)
        image_speed = 0.25
    }
    global.msg[0] = scr_gettext("obj_monsterkidtrigger6_192")
    global.msg[1] = scr_gettext("obj_monsterkidtrigger6_193")
    if (FL_HaveUmbrella == 1)
        global.msg[1] = scr_gettext("obj_monsterkidtrigger6_195")
    scr_regulartext()
    con = 7
}
if (con == 7 && instance_exists(OBJ_WRITER) == false)
{
    alarm[7] = 5
    global.plot = 112
    mkid.fun = true
    mkid.sprite_index = spr_mkid_prostrate
    con = 8
    global.interact = 0
}
if (con == 10)
{
    global.phasing = 1
    global.interact = 1
    mkid.solid = 0
    obj_mainchara.facing = Direction.Right
    global.facing = Direction.Right
    obj_mainchara.image_speed = 0.25
    difx = (mkid.x - obj_mainchara.x)
    dify = ((mkid.y - 18) - obj_mainchara.y)
    con = 11
    alarm[4] = 10
}
if (con == 11)
{
    obj_mainchara.x += (difx / 10)
    obj_mainchara.y += (dify / 10)
}
if (con == 12)
{
    con = 13
    alarm[4] = 20
    difx = (345 - obj_mainchara.x)
    dify = (70 - obj_mainchara.y)
}
if (con == 14)
{
    con = 15
    alarm[4] = 10
}
if (con == 15)
{
    obj_mainchara.x += (difx / 10)
    obj_mainchara.y += (dify / 10)
}
if (con == 16)
{
    con = 17
    alarm[4] = 30
    obj_mainchara.image_speed = 0
}
if (con == 18)
{
    mkid.image_speed = 0
    mkid.sprite_index = mkid.rtsprite
    con = 19
    alarm[4] = 20
}
if (con == 20)
{
    side = 1
    ledgewall.x -= 20
    mkid.image_speed = 0.25
    global.msg[0] = scr_gettext("obj_monsterkidtrigger6_272")
    global.msg[1] = scr_gettext("obj_monsterkidtrigger6_273")
    if (scr_murderlv() >= MurderLevel.Lv9ShyrenKilled && FL_SparedSpecific == 0)
    {
        global.msg[0] = scr_gettext("obj_monsterkidtrigger6_276")
        global.msg[1] = scr_gettext("obj_monsterkidtrigger6_277")
    }
    scr_regulartext()
    con = 21
    global.phasing = 0
}
if (con == 21 && instance_exists(OBJ_WRITER) == false)
{
    mkid.direction = 180
    mkid.fun = false
    mkid.hspeed = -5
    con = 25
    alarm[4] = 12
}
if (con == 26)
{
    mkid.hspeed = 0
    mkid.fun = true
    mkid.image_index = 0
    mkid.image_speed = 0.334
    mkid.sprite_index = spr_mkid_trip_l
    con = 49.2
}
if (con == 49.2)
{
    if (mkid.image_index >= 19)
    {
        mkid.image_index = 0
        mkid.x -= 13
        mkid.sprite_index = mkid.lsprite
        con = 22
        alarm[4] = 25
    }
}
if (con == 23)
{
    mkid.hspeed = -3
    global.plot = 113
    FL_InteractedWithGarbageSavepoint = 10
    global.interact = 0
    con = 24
}
