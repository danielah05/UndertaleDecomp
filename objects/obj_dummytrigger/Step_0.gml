if (con == 1)
{
    caster_pause(global.currentsong)
    con = 2
    curview = view_yview_get(0)
    alarm[4] = 30
}
if (con == 3)
{
    global.facing = Direction.Down
    view_yview_set(0, (view_yview_get(0) + 1))
    if (view_yview_get(0) > (curview + 60))
        con = 4
}
if (con == 4)
{
    con = 4.1
    alarm[4] = 20
}
if (con == 5.1)
{
    con = 4.2
    rememberxview = view_xview_get(view_current)
    rememberyview = view_yview_get(view_current)
    xdiff = 130
    ydiff = (192 - view_yview_get(view_current))
    view_target_set(view_current, noone)
    alarm[4] = 12
}
if (con == 4.2)
{
    if (view_xview_get(0) < 130)
        view_xview_set(0, (view_xview_get(0) + (xdiff / 10)))
    if (view_xview_get(0) > 130)
        view_xview_set(0, 130)
    if (view_yview_get(0) < 192)
        view_yview_set(0, (view_yview_get(0) + (ydiff / 10)))
    if (view_yview_get(0) > 192)
        view_yview_set(0, 192)
    if (view_hview_get(0) > 120)
        view_hview_set(0, (view_hview_get(0) - 12))
    if (view_hview_get(0) < 120)
        view_hview_set(0, 120)
    if (view_wview_get(0) > 160)
        view_wview_set(0, (view_wview_get(0) - 16))
    if (view_wview_get(0) < 160)
        view_wview_set(0, 160)
}
if (con == 5.2)
{
    con = 5
    alarm[4] = 10
}
if (con == 6)
{
    dummy.sprite_index = spr_dummymad
    caster_play(shock, 1, 0.8)
    con = 6.3
    remx = dummy.x
    remy = dummy.y
    alarm[4] = 60
}
if (con == 6.2)
{
    dummy.x = ((remx - 2) + random(4))
    dummy.y = ((remy - 2) + random(4))
}
if (con == 7.1)
{
    alarm[4] = 30
    con = 6.2
}
if (con == 7.2)
{
    with (dummy)
        event_user(1)
    con = 7
    alarm[4] = 10
}
if (con == 7.3)
{
    con = 6.4
    alarm[4] = 14
}
if (con == 6.4)
{
    if (view_xview_get(view_current) > 0)
        view_xview_set(view_current, (view_xview_get(view_current) - (xdiff / 10)))
    if (view_xview_get(0) < 0)
        view_xview_set(0, 0)
    if (view_yview_get(view_current) > rememberyview)
        view_yview_set(view_current, (view_yview_get(view_current) - (ydiff / 10)))
    if (view_yview_get(0) < rememberyview)
        view_yview_set(0, rememberyview)
    if (view_hview_get(view_current) < 240)
        view_hview_set(view_current, (view_hview_get(view_current) + 12))
    if (view_hview_get(0) > 240)
        view_hview_set(0, 240)
    if (view_wview_get(view_current) < 320)
        view_wview_set(view_current, (view_wview_get(view_current) + 16))
    if (view_wview_get(0) > 320)
        view_wview_set(0, 320)
}
if (con == 7.4)
{
    view_target_set(view_current, obj_mainchara)
    con = 6.2
    alarm[4] = 25
}
if (con == 8)
{
    view_yview_set(0, (view_yview_get(0) - 6))
    if (view_yview_get(0) <= (curview - 20))
    {
        con = 7.5
        alarm[4] = 10
    }
}
if (con == 8.5)
{
    global.facing = Direction.Up
    dummy.x = 180
    dummy.y = 80
    with (dummy)
    {
        event_user(0)
        event_user(1)
    }
    con = 7.6
    alarm[4] = 16
}
if (con == 8.6)
    con = 9
if (con == 9)
{
    global.facing = Direction.Up
    dummy.vspeed = 0
    con = 10
    caster_loop(predummy, 0.8, 1)
    if (FL_MadDummyStatus == MadDummyStatus.Ignored)
        global.msg[0] = scr_gettext("obj_dummytrigger_222") //* Hahaha..^1.&* It's just like you to&  run away./
    if (FL_MadDummyStatus == MadDummyStatus.Punched)
        global.msg[0] = scr_gettext("obj_dummytrigger_223") //* FOOL^1!&* You think you can hurt&  ME???/
    if (FL_MadDummyStatus == MadDummyStatus.NotPunched)
        global.msg[0] = scr_gettext("obj_dummytrigger_224") //* Hahaha..^1.&* Too intimidated to fight&  me^1, huh!?/
    global.msg[1] = scr_gettext("obj_dummytrigger_225") //* I am a ghost that lives&  inside a DUMMY./
    global.msg[2] = scr_gettext("obj_dummytrigger_226") //* My cousin used to live&  inside a DUMMY^1, too^1.&* Until.../
    if (FL_DummyStatus == DummyStatus.Run)
    {
        global.msg[3] = scr_gettext("obj_dummytrigger_229") //* YOU CAME ALONG!/
        global.msg[4] = scr_gettext("obj_dummytrigger_230") //* They were a shy sort^1.&* Living a lonely life in&  the RUINS.../
        global.msg[5] = scr_gettext("obj_dummytrigger_231") //* They saw you and hoped you&  might TALK to them./
        global.msg[6] = scr_gettext("obj_dummytrigger_232") //* Perhaps strike up a&  friendly conversation./
        global.msg[7] = scr_gettext("obj_dummytrigger_233") //* But NO!!!/
        global.msg[8] = scr_gettext("obj_dummytrigger_234") //* You ran away..^1.&* And broke their little&  ethereal heart./
        global.msg[9] = scr_gettext("obj_dummytrigger_235") //* Despicable^1.&* Despicable^1!&* DESPICABLE!/
        global.msg[10] = scr_gettext("obj_dummytrigger_236") //* HUMAN^1!&* I'll show you what REAL&  heartbreak is!/%%
    }
    if (FL_DummyStatus == DummyStatus.Kill)
    {
        global.msg[3] = scr_gettext("obj_dummytrigger_241")
        global.msg[4] = scr_gettext("obj_dummytrigger_242")
        global.msg[5] = scr_gettext("obj_dummytrigger_243")
        global.msg[6] = scr_gettext("obj_dummytrigger_244")
        global.msg[7] = scr_gettext("obj_dummytrigger_245")
        global.msg[8] = scr_gettext("obj_dummytrigger_246")
        global.msg[9] = scr_gettext("obj_dummytrigger_251")
        global.msg[10] = scr_gettext("obj_dummytrigger_252")
        global.msg[11] = scr_gettext("obj_dummytrigger_253")
    }
    if (FL_DummyStatus == DummyStatus.Talk)
    {
        global.msg[3] = scr_gettext("obj_dummytrigger_257")
        global.msg[4] = scr_gettext("obj_dummytrigger_258")
        global.msg[5] = scr_gettext("obj_dummytrigger_259")
        global.msg[6] = scr_gettext("obj_dummytrigger_260")
        global.msg[7] = scr_gettext("obj_dummytrigger_261")
        global.msg[8] = scr_gettext("obj_dummytrigger_262")
    }
    if (FL_DummyStatus == DummyStatus.Bore)
    {
        global.msg[3] = scr_gettext("obj_dummytrigger_267")
        global.msg[4] = scr_gettext("obj_dummytrigger_268")
        global.msg[5] = scr_gettext("obj_dummytrigger_269")
        global.msg[6] = scr_gettext("obj_dummytrigger_270")
        global.msg[7] = scr_gettext("obj_dummytrigger_271")
        global.msg[8] = scr_gettext("obj_dummytrigger_272")
        global.msg[9] = scr_gettext("obj_dummytrigger_273")
        global.msg[10] = scr_gettext("obj_dummytrigger_274")
    }
    if (murder == 1)
    {
        if (FL_MadDummyStatus == MadDummyStatus.Ignored)
            global.msg[0] = scr_gettext("obj_dummytrigger_279")
        if (FL_MadDummyStatus == MadDummyStatus.Punched)
            global.msg[0] = scr_gettext("obj_dummytrigger_280")
        if (FL_MadDummyStatus == MadDummyStatus.NotPunched)
            global.msg[0] = scr_gettext("obj_dummytrigger_281")
        global.msg[1] = scr_gettext("obj_dummytrigger_282")
        global.msg[2] = scr_gettext("obj_dummytrigger_283")
        global.msg[3] = scr_gettext("obj_dummytrigger_284")
        global.msg[4] = scr_gettext("obj_dummytrigger_285")
        global.msg[5] = scr_gettext("obj_dummytrigger_286")
        global.msg[6] = scr_gettext("obj_dummytrigger_287")
        global.msg[7] = scr_gettext("obj_dummytrigger_288")
        global.msg[8] = scr_gettext("obj_dummytrigger_289")
        con = 30
    }
    scr_regulartext()
    if instance_exists(obj_dialoguer)
        obj_dialoguer.side = 1
}
if (con == 10 && instance_exists(OBJ_WRITER) == false)
{
    caster_free(shock)
    caster_free(predummy)
    snd_play(snd_break2)
    dummy.sprite_index = spr_dummymad_toot
    dummy.image_index = 0
    dummy.image_speed = 0.45
    con = 11
    alarm[4] = 30
}
if (con == 12)
{
    con = 13
    global.battlegroup = BattleGroup.MadDummy
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    talkedto = 0
    alarm[4] = 32
}
if (con == 14)
{
    obj_mainchara.cutscene = false
    view_target_set(0, obj_mainchara)
    global.interact = 1
    if (global.interact == 0)
        global.interact = 1
    dummy.sprite_index = spr_napstablook_d
    con = 15
    alarm[4] = 15
}
if (con == 15)
{
    global.mercy = 0
    if (global.interact == 0)
        global.interact = 1
}
if (con == 16)
{
    global.border = 0
    global.msg[0] = scr_gettext("obj_dummytrigger_344") //* well..^1.&* i'm going to head home&  now.../
    global.msg[1] = scr_gettext("obj_dummytrigger_345") //* oh..^1. umm..^1.&* feel free to \"come&  with\" if you want.../
    global.msg[2] = scr_gettext("obj_dummytrigger_346") //* but no pressure.../
    global.msg[3] = scr_gettext("obj_dummytrigger_347") //* i understand if you're&  busy.../
    global.msg[4] = scr_gettext("obj_dummytrigger_348") //* it's fine.../
    global.msg[5] = scr_gettext("obj_dummytrigger_349") //* no worries.../
    global.msg[6] = scr_gettext("obj_dummytrigger_350") //* just thought i'd&  offer.../%%
    if (FL_NapstablookStatus == NapstablookStatus.NotSet)
    {
        global.msg[0] = scr_gettext("obj_dummytrigger_354") //* well..^1.&* i'm going to head home&  now.../
        global.msg[1] = scr_gettext("obj_dummytrigger_355") //* just warning you.../
        global.msg[2] = scr_gettext("obj_dummytrigger_356") //* so you don't accidentally&  follow me to my&  house.../
        global.msg[3] = scr_gettext("obj_dummytrigger_357") //* you probably wouldn't&  like that.../%%
    }
    scr_regulartext()
    if instance_exists(obj_dialoguer)
        obj_dialoguer.side = 1
    global.plot = 116
    greg = 1
    con = 17
}
if (con == 17 && instance_exists(OBJ_WRITER) == false)
{
    global.interact = 0
    dummy.vspeed = -3
    if (greg > 0)
        greg -= 0.04
    if (dummy.image_alpha == greg)
        solid = 0
    con = 18
    alarm[4] = 30
}
if (con == 19)
{
    with (dummy)
        instance_destroy()
    instance_destroy()
}
if (con == 30)
{
    if instance_exists(OBJ_WRITER)
    {
        if (OBJ_WRITER.stringno == 7)
        {
            dummy.sprite_index = spr_dummymad_toot
            dummy.image_index = 0
            dummy.image_speed = 0.45
        }
    }
    else
    {
        caster_free(all)
        snd_play(snd_break2)
        instance_create(0, 0, obj_flasher)
        con = 31
        alarm[4] = 2
    }
}
if (con == 32)
{
    with (dummy)
        sprite_index = spr_dummysurprise
    con = 33
    alarm[4] = 45
}
if (con == 34)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_dummytrigger_417")
    global.msg[1] = scr_gettext("obj_dummytrigger_418")
    d = instance_create(0, 0, obj_dialoguer)
    d.side = 1
    con = 35
}
if (con == 35 && instance_exists(OBJ_WRITER) == false)
{
    with (dummy)
        sprite_index = spr_dummyglad
    global.msg[0] = scr_gettext("obj_dummytrigger_427") //* Eureka^1.&* Eureka^1!&* EUREKA!/
    global.msg[1] = scr_gettext("obj_dummytrigger_428") //* Human^1.&* That moment of unbridled&  emotion./
    global.msg[2] = scr_gettext("obj_dummytrigger_429") //* It allowed me to finally&  fuse with my body!/
    global.msg[3] = scr_gettext("obj_dummytrigger_430") //* I'm fully corporeal now^1!&* My lifelong dream^1, realized!/
    global.msg[4] = scr_gettext("obj_dummytrigger_431") //* In return^1, I guess I&  won't stomp you./
    global.msg[5] = scr_gettext("obj_dummytrigger_432") //* How's that sound?/%%
    d = instance_create(0, 0, obj_dialoguer)
    d.side = 1
    con = 36
}
if (con == 36 && instance_exists(OBJ_WRITER) == false)
{
    con = 37
    global.battlegroup = BattleGroup.GladDummy
    FL_AreaKillsPointer = KillsPointer_Tundra
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    talkedto = 0
    alarm[4] = 32
}
if (con == 38)
{
    with (dummy)
        instance_destroy()
    obj_mainchara.cutscene = false
    view_target_set(0, obj_mainchara)
    global.interact = 1
    if (global.interact == 0)
        global.interact = 1
    con = 39
    alarm[4] = 4
}
if (con == 40)
{
    global.mercy = 0
    global.plot = 117
    global.interact = 0
    instance_destroy()
    con = 41
}
