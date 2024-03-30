if (active == true)
{
    global.typer = 5
    global.msc = 0
    global.facechoice = 0
    if (con == 0)
    {
        global.msg[0] = scr_gettext("obj_spidertalkevent_103")
        global.msg[1] = scr_gettext("obj_spidertalkevent_104")
        if (murder == 1)
            global.msg[1] = scr_gettext("obj_spidertalkevent_106")
        snd_play(snd_hurtgirl)
        instance_create(0, 0, obj_dialoguer)
        con = 90
    }
    if (con == 1)
    {
        global.msg[0] = scr_gettext("obj_spidertalkevent_114")
        snd_play(snd_hurtgirl)
        instance_create(0, 0, obj_dialoguer)
        con = 90
    }
    if (con == 2)
    {
        global.msg[0] = scr_gettext("obj_spidertalkevent_122")
        snd_play(snd_hurtgirl)
        instance_create(0, 0, obj_dialoguer)
        con = 90
    }
    if (con == 3)
    {
        global.msg[0] = scr_gettext("obj_spidertalkevent_130")
        if (murder == 1)
            global.msg[0] = scr_gettext("obj_spidertalkevent_132")
        snd_play(snd_hurtgirl)
        instance_create(0, 0, obj_dialoguer)
        con = 90
    }
    if (con == 4)
    {
        global.msg[0] = scr_gettext("obj_spidertalkevent_140")
        snd_play(snd_hurtgirl)
        instance_create(0, 0, obj_dialoguer)
        con = 90
    }
    if (con == 5)
    {
        if (FL_SpiderDonationTotal < 9000)
            global.msg[0] = scr_gettext("obj_spidertalkevent_149")
        else
        {
            global.msg[0] = scr_gettext("obj_spidertalkevent_152")
            if (murder == 1)
                global.msg[0] = scr_gettext("obj_spidertalkevent_154")
        }
        snd_play(snd_hurtgirl)
        instance_create(0, 0, obj_dialoguer)
        con = 90
    }
    if (con == 90 && instance_exists(OBJ_WRITER) == false)
    {
        global.interact = 0
        active = false
        x += 90
        FL_MuffetUnknown += 1
        con = FL_MuffetUnknown
        if (con == 6)
            pausewait = 1
    }
}
if (pausewait == 1)
{
    FL_UnknownBoolean17 = true
    if (obj_mainchara.image_speed == 0)
        pausewaittime += 3
    else
        pausewaittime += 1
    if (pausewaittime > 150)
    {
        pausewait = 0
        con = 15
    }
}
if (con == 15 && global.interact == 0)
{
    global.interact = 1
    FL_UnknownBoolean17 = false
    bigweb = scr_marker(582, 84, spr_megaweb)
    bigweb.depth = 99999
    muffet = scr_marker(635, 96, spr_muffet_overworld)
    muffet.depth = 99998
    bigweb.image_alpha = 0
    muffet.image_alpha = 0
    con = 15.1
    alarm[4] = 30
}
if (con == 15.1)
{
    bigweb.image_alpha += 0.04
    muffet.image_alpha += 0.04
}
if (con == 16.1)
{
    hspider[0] = instance_create(556, -20, obj_highspider)
    hspider[0].vspeed = 3
    hspider[0].alarm[5] = 38
    hspider[1] = instance_create(600, -20, obj_highspider)
    hspider[1].vspeed = 3
    hspider[1].alarm[5] = 35
    hspider[2] = instance_create(684, -20, obj_highspider)
    hspider[2].vspeed = 3
    hspider[2].alarm[5] = 35
    hspider[3] = instance_create(720, -20, obj_highspider)
    hspider[3].vspeed = 3
    hspider[3].alarm[5] = 38
    ss1 = scr_marker(428, 180, spr_purplespider_overworld)
    ss2 = scr_marker(438, 170, spr_purplespider_overworld)
    ss1.image_speed = 0.25
    ss1.hspeed = 4
    ss2.hspeed = 3.5
    ss2.image_speed = 0.25
    ss3 = scr_marker(854, 180, spr_purplespider_overworld)
    ss4 = scr_marker(864, 170, spr_purplespider_overworld)
    ss3.hspeed = -4
    ss3.image_speed = 0.25
    ss4.hspeed = -3.5
    ss4.image_speed = 0.25
    con = 16
    alarm[4] = 20
}
if (con == 17)
{
    ss1.speed = 0
    ss2.speed = 0
    ss3.speed = 0
    ss4.speed = 0
    ss1.image_speed = 0
    ss2.image_speed = 0
    ss3.image_speed = 0
    ss4.image_speed = 0
    conner = 0
    global.facing = Direction.Up
    global.typer = 5
    global.msc = 0
    global.facechoice = 0
    if (FL_SpiderDonationTotal < 9000)
    {
        if (global.tempvalue[11] == 0)
            global.msg[0] = scr_gettext("obj_spidertalkevent_267")
        else
            global.msg[0] = scr_gettext("obj_spidertalkevent_271")
        global.msg[1] = scr_gettext("obj_spidertalkevent_273")
        global.msg[2] = scr_gettext("obj_spidertalkevent_274")
        global.msg[3] = scr_gettext("obj_spidertalkevent_275")
        global.msg[4] = scr_gettext("obj_spidertalkevent_276")
        global.msg[5] = scr_gettext("obj_spidertalkevent_277")
        con = 18
    }
    else
    {
        global.msg[0] = scr_gettext("obj_spidertalkevent_283")
        global.msg[1] = scr_gettext("obj_spidertalkevent_284")
        global.msg[2] = scr_gettext("obj_spidertalkevent_285")
        global.msg[3] = scr_gettext("obj_spidertalkevent_286")
        global.msg[4] = scr_gettext("obj_spidertalkevent_287")
        con = 40
    }
    if (murder == 1)
    {
        global.msg[0] = scr_gettext("obj_spidertalkevent_293")
        global.msg[1] = scr_gettext("obj_spidertalkevent_294")
        global.msg[2] = scr_gettext("obj_spidertalkevent_295")
        con = 18
    }
    dr = instance_create(0, 0, obj_dialoguer)
    dr.side = 0
}
if (con == 18 && instance_exists(OBJ_WRITER) == true)
{
    if (conner == 0 && OBJ_WRITER.stringno == 1)
    {
        snd_play(snd_hurtgirl)
        conner = 1
    }
}
if (con == 18 && instance_exists(OBJ_WRITER) == false)
{
    con = 19
    alarm[4] = 50
}
if (con == 19)
{
    muffet.image_index += 0.25
    if (muffet.image_index >= 5.75)
        muffet.image_index = 4
}
if (con == 20)
{
    global.mercy = 1
    global.battlegroup = 56
    instance_create(0, 0, obj_battler)
    con = 21
    alarm[4] = 33
}
if (con == 21)
    global.interact = 1
if (con == 22)
{
    con = 23
    with (ss1)
        instance_destroy()
    with (ss2)
        instance_destroy()
    with (ss3)
        instance_destroy()
    with (ss4)
        instance_destroy()
    if (FL_KilledLast == true)
    {
        FL_KilledMuffet = true
        with (muffet)
            instance_destroy()
        with (obj_highspider)
            instance_destroy()
        with (bigweb)
            instance_destroy()
    }
    else
    {
        muffet.image_speed = 0
        muffet.image_index = 0
        con = 30
    }
    with (obj_slowdownwalk_x)
        instance_destroy()
    obj_mainchara.cutscene = false
    global.interact = 1
    alarm[4] = 15
}
if (con == 23 || con == 30)
    global.interact = 1
if (con == 24)
    con = 60
if (con == 31)
{
    snd_play(snd_hurtgirl)
    global.typer = 5
    global.facechoice = 0
    global.msc = 0
    global.msg[0] = scr_gettext("obj_spidertalkevent_392")
    global.msg[1] = scr_gettext("obj_spidertalkevent_393")
    con = 32
    gr = instance_create(0, 0, obj_dialoguer)
    gr.side = 0
}
if (con == 32 && instance_exists(OBJ_WRITER) == false)
{
    con = 33
    alarm[4] = 40
}
if (con == 33 && instance_exists(OBJ_WRITER) == false)
{
    muffet.image_index += 0.25
    if (muffet.image_index >= 5.75)
        muffet.image_index = 4
}
if (con == 34)
{
    con = 35
    alarm[4] = 40
}
if (con == 35)
{
    muffet.image_alpha -= 0.04
    bigweb.image_alpha -= 0.04
    with (obj_highspider)
    {
        vspeed = -4
        image_speed = 0.2
    }
}
if (con == 36)
    con = 60
if (con == 40 && instance_exists(OBJ_WRITER) == false)
{
    ss1.image_speed = 0.25
    ss1.hspeed = -4
    ss2.hspeed = -3.5
    ss2.image_speed = 0.25
    ss3.hspeed = 4
    ss3.image_speed = 0.25
    ss4.hspeed = 3.5
    ss4.image_speed = 0.25
    with (obj_slowdownwalk_x)
        instance_destroy()
    obj_mainchara.cutscene = false
    con = 35
    alarm[4] = 40
}
if (con == 60)
{
    global.plot = 165
    global.mercy = 0
    global.border = 0
    FL_UnknownBoolean17 = false
    global.interact = 0
    if (murder == 1)
        global.plot = 185
    instance_destroy()
}
