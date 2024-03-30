if (obj_mainchara.y < 840 && global.interact == 0 && con == 0)
{
    global.interact = 1
    global.facing = Direction.Up
    obj_mainchara.image_speed = 0.334
    obj_mainchara.vspeed = -3
    con = 1
    alarm[4] = 15
}
if (con == 2)
{
    obj_mainchara.vspeed = 0
    view_target_set(0, noone)
    obj_mainchara.cutscene = true
    con = 3
}
if (con == 3)
{
    view_yview_set(0, (view_yview_get(0) - 3))
    if (view_yview_get(0) <= 622)
    {
        view_yview_set(0, 620)
        con = 4
    }
}
if (con == 4)
{
    ossafe_ini_open("undertale.ini")
    already = ini_read_real("Mettaton", "BossMet", 0)
    ossafe_ini_close()
    con = 5
    alarm[4] = 15
    if (murder == 1)
        already = 0
    if (already >= 1)
    {
        con = 3.1
        alarm[4] = 15
    }
}
if (con == 4.1)
{
    global.typer = 5
    global.facechoice = 0
    global.msc = 833
    instance_create(0, 0, obj_dialoguer)
    con = 4.2
}
if (con == 4.5 && instance_exists(OBJ_WRITER) == false)
{
    con = 4.4
    alarm[4] = 20
}
if (con == 5.4)
{
    mett.sprite_index = spr_mettaton_silent_behind
    FL_AnimationIndex = 7
    mett.image_speed = 0
    mett.image_index = 0
    global.typer = 27
    global.msc = 0
    global.msg[0] = scr_gettext("obj_mettboss_event_170")
    instance_create(0, 0, obj_dialoguer)
    skip = true
    con = 5.5
}
if (con == 5.5 && instance_exists(OBJ_WRITER) == false)
{
    caster_stop(all)
    snd_play(snd_item)
    mett.image_index = 1
    con = 4.6
    alarm[4] = 80
}
if (con == 5.6 && instance_exists(OBJ_WRITER) == false)
{
    global.msg[0] = scr_gettext("obj_mettboss_event_187")
    instance_create(0, 0, obj_dialoguer)
    con = 5.7
    babytimer = 500
}
if (con == 5.7 && instance_exists(OBJ_WRITER) == false)
    con = 19
if (con == 6 && instance_exists(OBJ_WRITER) == false)
{
    global.typer = 27
    global.msc = 0
    global.facechoice = 0
    global.msg[0] = scr_gettext("obj_mettboss_event_230")
    global.msg[1] = scr_gettext("obj_mettboss_event_231")
    global.msg[2] = scr_gettext("obj_mettboss_event_232")
    global.msg[3] = scr_gettext("obj_mettboss_event_233")
    global.msg[4] = scr_gettext("obj_mettboss_event_234")
    global.msg[5] = scr_gettext("obj_mettboss_event_235")
    global.msg[6] = scr_gettext("obj_mettboss_event_236")
    global.msg[7] = scr_gettext("obj_mettboss_event_237")
    global.msg[8] = scr_gettext("obj_mettboss_event_238")
    global.msg[9] = scr_gettext("obj_mettboss_event_239")
    global.msg[10] = scr_gettext("obj_mettboss_event_240")
    global.msg[11] = scr_gettext("obj_mettboss_event_241")
    global.msg[12] = scr_gettext("obj_mettboss_event_242")
    global.msg[13] = scr_gettext("obj_mettboss_event_243")
    global.msg[14] = scr_gettext("obj_mettboss_event_244")
    global.msg[15] = scr_gettext("obj_mettboss_event_245")
    global.msg[16] = scr_gettext("obj_mettboss_event_247")
    global.msg[17] = scr_gettext("obj_mettboss_event_248")
    global.msg[18] = scr_gettext("obj_mettboss_event_249")
    global.msg[19] = scr_gettext("obj_mettboss_event_250")
    global.msg[20] = scr_gettext("obj_mettboss_event_251")
    global.msg[21] = scr_gettext("obj_mettboss_event_252")
    global.msg[22] = scr_gettext("obj_mettboss_event_253")
    global.msg[23] = scr_gettext("obj_mettboss_event_254")
    global.msg[24] = scr_gettext("obj_mettboss_event_255")
    global.msg[25] = scr_gettext("obj_mettboss_event_256")
    global.msg[26] = scr_gettext("obj_mettboss_event_257")
    global.msg[27] = scr_gettext("obj_mettboss_event_258")
    if (murder == 1)
    {
        global.msg[0] = scr_gettext("obj_mettboss_event_263")
        global.msg[1] = scr_gettext("obj_mettboss_event_264")
        global.msg[2] = scr_gettext("obj_mettboss_event_265")
        global.msg[3] = scr_gettext("obj_mettboss_event_266")
        global.msg[4] = scr_gettext("obj_mettboss_event_267")
        global.msg[5] = scr_gettext("obj_mettboss_event_268")
        global.msg[6] = scr_gettext("obj_mettboss_event_269")
    }
    instance_create(0, 0, obj_dialoguer)
    con = 7
    if (murder == 1)
        con = 30
}
if (con == 7 && instance_exists(OBJ_WRITER) == false)
{
    caster_free(all)
    mtsong2 = caster_load("music/mettafly.ogg")
    drawblack = 1
    snd_play(snd_impact)
    con = 8
    alarm[4] = 40
}
if (con == 9)
{
    snd_play(snd_knock)
    con = 10
    alarm[4] = 20
}
if (con == 11)
{
    global.typer = 47
    global.msc = 0
    global.facechoice = 6
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_mettboss_event_303")
    global.msg[1] = scr_gettext("obj_mettboss_event_304")
    instance_create(0, 0, obj_dialoguer)
    con = 13
}
if (con == 13 && instance_exists(OBJ_WRITER) == false)
{
    snd_play(snd_spearappear)
    sixtyon = 1
    sixtyflash = 1
    global.typer = 27
    global.msc = 0
    global.facechoice = 0
    global.faceemotion = 3
    mett.image_speed = 0.25
    global.msg[0] = scr_gettext("obj_mettboss_event_321")
    global.msg[1] = scr_gettext("obj_mettboss_event_322")
    instance_create(0, 0, obj_dialoguer)
    con = 14
}
if (con == 14 && instance_exists(OBJ_WRITER) == false)
{
    babytimer = 0
    scr = instance_create(0, 0, obj_scrollaway_event)
    scr.sixty = sixty
    con = 15
    alarm[4] = 90
}
if (con == 16 && instance_exists(OBJ_WRITER) == false)
{
    caster_play(mtsong2, 0.7, 1)
    global.msc = 0
    global.typer = 27
    global.msg[0] = scr_gettext("obj_mettboss_event_341")
    global.msg[1] = scr_gettext("obj_mettboss_event_342")
    global.msg[2] = scr_gettext("obj_mettboss_event_343")
    ss = instance_create(0, 0, obj_dialoguer)
    ss.side = 0
    con = 17
}
if (con > 14 && murder == 0)
    babytimer += 1
if (con == 17 && instance_exists(OBJ_WRITER) == false)
{
    if (babytimer > 300)
    {
        snd_play(snd_break2)
        con = 18
        alarm[4] = 30
    }
}
if (con == 19)
{
    global.mercy = 1
    global.battlegroup = 80
    if (skip == true)
        global.battlegroup = 81
    FL_InBattle = false
    instance_create(0, 0, obj_battler)
    con = 20
    alarm[4] = 33
}
if (con == 21)
{
    global.mercy = 0
    global.border = 0
    SCR_BORDERSETUP()
    with (obj_scrollaway_event)
        con = 6
    with (mett)
        instance_destroy()
    view_yview_set(0, (view_yview_get(0) - 60))
    instance_create(0, 0, obj_mettdestroyed_event)
    instance_destroy()
}
if (con == 30 && instance_exists(OBJ_WRITER) == false)
{
    obj_mainchara.visible = false
    mc = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_maincharau)
    with (mc)
        image_index = 1
    with (mc)
        vspeed = -0.5
    con = 31
    alarm[4] = 10
}
if (con == 32)
{
    with (mc)
        image_index = 0
    with (mc)
        vspeed = 0
    con = 33
    alarm[4] = 30
}
if (con == 34)
{
    global.msg[0] = scr_gettext("obj_mettboss_event_411")
    global.msg[1] = scr_gettext("obj_mettboss_event_412")
    global.msg[2] = scr_gettext("obj_mettboss_event_413")
    global.msg[3] = scr_gettext("obj_mettboss_event_414")
    global.msg[4] = scr_gettext("obj_mettboss_event_415")
    global.msg[5] = scr_gettext("obj_mettboss_event_416")
    global.msg[6] = scr_gettext("obj_mettboss_event_417")
    global.msg[7] = scr_gettext("obj_mettboss_event_418")
    con = 35
    instance_create(0, 0, obj_dialoguer)
}
if (con == 35 && instance_exists(OBJ_WRITER) == false)
{
    with (mc)
        image_index = 1
    with (mc)
        vspeed = -0.5
    con = 36
    alarm[4] = 10
}
if (con == 37)
{
    with (mc)
        image_index = 0
    with (mc)
        vspeed = 0
    con = 38
    alarm[4] = 30
}
if (con == 39)
{
    global.msg[0] = scr_gettext("obj_mettboss_event_443")
    global.msg[1] = scr_gettext("obj_mettboss_event_444")
    con = 40
    instance_create(0, 0, obj_dialoguer)
}
if (con == 40 && instance_exists(OBJ_WRITER) == false)
{
    caster_free(all)
    shkwv = caster_load("music/f_destroyed2.ogg")
    pt = 0
    vl = 0.5
    caster_loop(shkwv, vl, pt)
    con = 49
    alarm[4] = 110
    brt = scr_marker(-10, -10, spr_pixwht)
    brt.image_xscale = 800
    brt.image_yscale = 800
    brt.image_alpha = 0
    br = 0
}
if (con == 49)
{
    br += 0.02
    brt.image_alpha = br
    pt += 0.02
    vl += 0.01
    vol = vl
    if (vl > 1)
        vol = (2 - vl)
    caster_set_pitch(shkwv, pt)
    caster_set_volume(shkwv, vol)
}
if (con == 50 && instance_exists(OBJ_WRITER) == false)
{
    with (brt)
        instance_destroy()
    caster_free(shkwv)
    global.mercy = 1
    global.battlegroup = 94
    FL_InBattle = false
    instance_create(0, 0, obj_battler)
    con = 51
    alarm[4] = 33
}
if (con == 52)
{
    with (mett)
        visible = false
    obj_mainchara.cutscene = false
    view_target_set(0, obj_mainchara)
    obj_mainchara.visible = true
    with (sixty)
        instance_destroy()
    with (mc)
        instance_destroy()
    with (obj_npc_marker)
        instance_destroy()
    global.interact = 0
    con = 43
    global.plot = 199
    caster_free(all)
    instance_destroy()
    return;
}
if instance_exists(sixty)
{
    if (sixtyon == 1)
    {
        if (sixty.image_alpha < 1)
            sixty.image_alpha += 0.05
    }
    if (sixtyflash == 1)
    {
        s_siner += 1
        sixty.image_blend = merge_color(c_white, c_gray, abs((sin((s_siner / 6)) / 2)))
    }
}
