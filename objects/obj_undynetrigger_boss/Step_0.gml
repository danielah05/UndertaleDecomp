with (obj_undynetrigger_boss)
{
    if instance_exists(obj_mainchara)
    {
        if (obj_mainchara.y < 600 && con == 0 && global.interact == 0)
        {
            remembery = obj_mainchara.y
            rememberyyy = obj_mainchara.y
            if (obj_mainchara.x < 128)
                obj_mainchara.x = 128
            global.interact = 1
            con = 1
            vol = caster_get_volume(global.currentsong)
            undyne = instance_create(137, 135, obj_undynea_actor)
            undyne.sprite_index = undyne.usprite
        }
    }
    if (con == 1)
    {
        obj_mainchara.cutscene = true
        view_target_set(0, noone)
        con = 2
        alarm[4] = 33
    }
    if (con == 2)
    {
        if (vol > 0)
            vol -= 0.034
        caster_set_volume(global.currentsong, vol)
    }
    if (con == 3)
    {
        view_yview_set(0, (view_yview_get(0) - 4))
        if (view_yview_get(0) < 80)
            con = 4
    }
    if (con == 4)
    {
        con = 5
        alarm[4] = 30
    }
    if (con == 6)
    {
        global.facechoice = 0
        global.typer = 37
        global.msc = 0
        global.msg[0] = scr_gettext("obj_undynetrigger_boss_157")
        global.msg[1] = scr_gettext("obj_undynetrigger_boss_158")
        global.msg[2] = scr_gettext("obj_undynetrigger_boss_159")
        global.msg[3] = scr_gettext("obj_undynetrigger_boss_160")
        global.msg[4] = scr_gettext("obj_undynetrigger_boss_161")
        global.msg[5] = scr_gettext("obj_undynetrigger_boss_162")
        global.msg[6] = scr_gettext("obj_undynetrigger_boss_163")
        global.msg[7] = scr_gettext("obj_undynetrigger_boss_164")
        global.msg[8] = scr_gettext("obj_undynetrigger_boss_165")
        g = instance_create(0, 0, obj_dialoguer)
        g.side = 1
        con = 7
    }
    if (con == 7 && instance_exists(OBJ_WRITER))
    {
        if (OBJ_WRITER.stringno == 2)
            undyne.sprite_index = undyne.rsprite
        if (OBJ_WRITER.stringno == 4)
            undyne.sprite_index = undyne.dsprite
        if (OBJ_WRITER.stringno == 6)
            undyne.sprite_index = undyne.lsprite
        if (OBJ_WRITER.stringno == 7)
            undyne.sprite_index = undyne.dsprite
        if (OBJ_WRITER.stringno == 8)
            undyne.sprite_index = undyne.lsprite
    }
    if (con == 7 && (!instance_exists(OBJ_WRITER)))
    {
        con = 8
        if (FL_PapyrusStatus == PapyrusStatus.Killed)
            con = 49
        alarm[4] = 60
    }
    if (con == 9)
    {
        undyne.sprite_index = undyne.dsprite
        global.msg[0] = scr_gettext("obj_undynetrigger_boss_190")
        global.msg[1] = scr_gettext("obj_undynetrigger_boss_191")
        g = instance_create(0, 0, obj_dialoguer)
        g.side = 1
        con = 10
    }
    if (con == 10 && instance_exists(OBJ_WRITER) == false)
    {
        global.msg[0] = scr_gettext("obj_undynetrigger_boss_199")
        event_user(1)
        con = 11
    }
    if (con == 11 && instance_exists(OBJ_WRITER) == false)
    {
        global.msg[0] = scr_gettext("obj_undynetrigger_boss_206")
        event_user(1)
        con = 12
    }
    if (con == 12 && instance_exists(OBJ_WRITER) == false)
    {
        global.msg[0] = scr_gettext("obj_undynetrigger_boss_213")
        event_user(1)
        con = 13
    }
    if (con == 13 && instance_exists(OBJ_WRITER) == false)
    {
        global.msg[0] = scr_gettext("obj_undynetrigger_boss_220")
        event_user(1)
        view_angle_set(0, 0)
        con = 14
    }
    if (con == 14)
    {
        con = 15
        white = instance_create(0, 0, obj_npc_marker)
        white.sprite_index = spr_pixwht
        white.image_speed = 0
        white.image_xscale = 200
        white.image_yscale = 200
        white.visible = true
        white.image_alpha = 0
        alp = 0
    }
    if (con == 15)
    {
        alp += 0.02
        white.image_alpha = alp
        if (alp >= 1)
            con = 16
    }
    if (con == 16)
    {
        con = 17
        undyne.x += 3
        undyne.sprite_index = spr_undyne_eyeding
        undyne.image_index = 0
        undyne.image_speed = 0
        fakedrawer = 0
		view_visible[1] = false
        view_hview_set(1, 240)
        view_wview_set(1, 320)
        view_xview_set(1, 0)
        view_yview_set(1, 60)
        view_target_set(0, noone)
        FL_UndyneZoomCutscene = false
        view_xview_set(0, 0)
        view_yview_set(0, 60)
        view_hview_set(0, 240)
        view_wview_set(0, 320)
        alarm[4] = 20
    }
    if (con == 18)
    {
        con = 19
        alarm[4] = 60
    }
    if (con == 19)
    {
        if (alp > 0)
            alp -= 0.05
        white.image_alpha = alp
    }
    if (con == 20)
    {
        with (white)
            instance_destroy()
        con = 21
        ax = 0
        alarm[4] = 90
    }
    if (con == 21)
    {
        if (ax < 8)
            ax += 0.2
        if (ax == 4)
            snd_play(snd_bell)
        undyne.image_index = floor(ax)
    }
    if (con == 22)
    {
        undyne.fun = false
		undyne.sprite_index = spr_undyne_starkd_nomask
        con = 23
        obj_mainchara.y = 0
        obj_mainchara.visible = false
        alarm[4] = 2
    }
    if (con == 24)
    {
        global.facechoice = 5
        global.faceemotion = 1
        global.typer = 37
        q = 0
        if (global.kills > 0)
            q = 1
        if (global.kills == 1 && FL_UndyneTriggerOverride == true)
            q = 0
        if (global.kills == 0)
            q = 0
        if (q == 0)
        {
            ossafe_ini_open("undertale.ini")
            ud = ini_read_real("Undyne", "UD", 0)
            ossafe_ini_close()
            global.msg[0] = scr_gettext("obj_undynetrigger_boss_325")
            global.msg[1] = scr_gettext("obj_undynetrigger_boss_326")
            global.msg[2] = scr_gettext("obj_undynetrigger_boss_327")
            global.msg[3] = scr_gettext("obj_undynetrigger_boss_328")
            global.msg[4] = scr_gettext("obj_undynetrigger_boss_329")
            global.msg[5] = scr_gettext("obj_undynetrigger_boss_330")
            global.msg[6] = scr_gettext("obj_undynetrigger_boss_331")
            if (FL_MonsterKidSavedStatus == MonsterKidSavedStatus.SavedByPlayer || FL_MonsterKidSavedStatus == MonsterKidSavedStatus.RoomExit)
                global.msg[6] = scr_gettext("obj_undynetrigger_boss_332")
            global.msg[7] = scr_gettext("obj_undynetrigger_boss_335")
            global.msg[8] = scr_gettext("obj_undynetrigger_boss_336")
            global.msg[9] = scr_gettext("obj_undynetrigger_boss_337")
            global.msg[10] = scr_gettext("obj_undynetrigger_boss_338")
            global.msg[11] = scr_gettext("obj_undynetrigger_boss_339")
            global.msg[12] = scr_gettext("obj_undynetrigger_boss_340")
            global.msg[13] = scr_gettext("obj_undynetrigger_boss_341")
            global.msg[14] = scr_gettext("obj_undynetrigger_boss_342")
            global.msg[15] = scr_gettext("obj_undynetrigger_boss_343")
            global.msg[16] = scr_gettext("obj_undynetrigger_boss_344")
            global.msg[17] = scr_gettext("obj_undynetrigger_boss_345")
            global.msg[18] = scr_gettext("obj_undynetrigger_boss_346")
            global.msg[19] = scr_gettext("obj_undynetrigger_boss_347")
            if (ud > 0)
            {
                global.msg[7] = scr_gettext("obj_undynetrigger_boss_351")
                global.msg[8] = scr_gettext("obj_undynetrigger_boss_352")
                global.msg[9] = scr_gettext("obj_undynetrigger_boss_353")
                global.msg[10] = scr_gettext("obj_undynetrigger_boss_354")
                global.msg[11] = scr_gettext("obj_undynetrigger_boss_355")
                global.msg[12] = scr_gettext("obj_undynetrigger_boss_356")
                global.msg[13] = scr_gettext("obj_undynetrigger_boss_357")
                global.msg[14] = scr_gettext("obj_undynetrigger_boss_358")
                global.msg[15] = scr_gettext("obj_undynetrigger_boss_359")
                global.msg[16] = scr_gettext("obj_undynetrigger_boss_360")
                global.msg[17] = scr_gettext("obj_undynetrigger_boss_361")
                global.msg[18] = scr_gettext("obj_undynetrigger_boss_362")
                global.msg[19] = scr_gettext("obj_undynetrigger_boss_363")
            }
        }
        if (q == 1)
        {
            global.msg[0] = scr_gettext("obj_undynetrigger_boss_369")
            global.msg[1] = scr_gettext("obj_undynetrigger_boss_370")
            global.msg[2] = scr_gettext("obj_undynetrigger_boss_371")
            global.msg[3] = scr_gettext("obj_undynetrigger_boss_372")
            global.msg[4] = scr_gettext("obj_undynetrigger_boss_373")
            global.msg[5] = scr_gettext("obj_undynetrigger_boss_374")
            global.msg[6] = scr_gettext("obj_undynetrigger_boss_375")
            global.msg[7] = scr_gettext("obj_undynetrigger_boss_376")
            global.msg[8] = scr_gettext("obj_undynetrigger_boss_377")
            global.msg[9] = scr_gettext("obj_undynetrigger_boss_378")
            global.msg[10] = scr_gettext("obj_undynetrigger_boss_379")
            global.msg[11] = scr_gettext("obj_undynetrigger_boss_381")
            global.msg[12] = scr_gettext("obj_undynetrigger_boss_382")
            if (FL_ShyrenStatus == ShyrenStatus.Killed)
            {
                global.msg[11] = scr_gettext("obj_undynetrigger_boss_386")
                global.msg[12] = scr_gettext("obj_undynetrigger_boss_387")
            }
            if (FL_SnowdrakeStatus == SnowdrakeStatus.Killed)
            {
                global.msg[11] = scr_gettext("obj_undynetrigger_boss_392")
                global.msg[12] = scr_gettext("obj_undynetrigger_boss_393")
            }
            if (FL_DoggoStatus == DogStatus.Killed)
            {
                global.msg[11] = scr_gettext("obj_undynetrigger_boss_399")
                global.msg[12] = scr_gettext("obj_undynetrigger_boss_400")
            }
            if (FL_DogCoupleStatus == DogStatus.Killed)
            {
                global.msg[11] = scr_gettext("obj_undynetrigger_boss_405")
                global.msg[12] = scr_gettext("obj_undynetrigger_boss_406")
            }
            if (FL_GreaterDogStatus == DogStatus.Killed)
            {
                global.msg[11] = scr_gettext("obj_undynetrigger_boss_412")
                global.msg[12] = scr_gettext("obj_undynetrigger_boss_413")
            }
            if (FL_LesserDogStatus == DogStatus.Killed)
            {
                global.msg[11] = scr_gettext("obj_undynetrigger_boss_419")
                global.msg[12] = scr_gettext("obj_undynetrigger_boss_420")
            }
            if (FL_LesserDogStatus == DogStatus.Killed && FL_GreaterDogStatus == DogStatus.Killed && FL_DogCoupleStatus == DogStatus.Killed && FL_DoggoStatus)
            {
                global.msg[11] = scr_gettext("obj_undynetrigger_boss_425")
                global.msg[12] = scr_gettext("obj_undynetrigger_boss_426")
            }
            global.msg[13] = scr_gettext("obj_undynetrigger_boss_429")
            global.msg[14] = scr_gettext("obj_undynetrigger_boss_430")
            global.msg[15] = scr_gettext("obj_undynetrigger_boss_431")
            global.msg[16] = scr_gettext("obj_undynetrigger_boss_432")
            global.msg[17] = scr_gettext("obj_undynetrigger_boss_433")
            global.msg[18] = scr_gettext("obj_undynetrigger_boss_434")
            global.msg[19] = scr_gettext("obj_undynetrigger_boss_435")
            global.msg[20] = scr_gettext("obj_undynetrigger_boss_436")
            global.msg[21] = scr_gettext("obj_undynetrigger_boss_437")
            global.msg[22] = scr_gettext("obj_undynetrigger_boss_438")
        }
        g = instance_create(0, 0, obj_dialoguer)
        g.side = 1
        con = 25
    }
    if (con == 25 && instance_exists(OBJ_WRITER) == false)
    {
        obj_mainchara.visible = true
        obj_mainchara.y = rememberyyy
        view_yview_set(0, (view_yview_get(0) + 8))
        if (view_yview_get(0) >= yy)
        {
            save = instance_create(220, 660, obj_savepoint)
            view_target_set(0, obj_mainchara)
            obj_mainchara.cutscene = false
            global.interact = 0
            con = 26
            global.plot = 121
            if instance_exists(undyne)
            {
                with (undyne)
                    instance_destroy()
            }
            instance_destroy()
        }
    }
    if (con == 50)
    {
        undyne.sprite_index = undyne.usprite
        global.msg[0] = scr_gettext("obj_undynetrigger_boss_468")
        global.msg[1] = scr_gettext("obj_undynetrigger_boss_469")
        con = 51
        g = instance_create(0, 0, obj_dialoguer)
        g.side = 1
    }
    if (con == 51 && instance_exists(OBJ_WRITER) == false)
    {
        undyne.sprite_index = undyne.rsprite
        con = 52
        alarm[4] = 60
    }
    if (con == 53)
    {
        undyne.sprite_index = undyne.dsprite
        global.typer = 37
        global.msc = 0
        global.facechoice = 5
        global.faceemotion = 4
        global.msg[0] = scr_gettext("obj_undynetrigger_boss_490")
        global.msg[1] = scr_gettext("obj_undynetrigger_boss_491")
        global.msg[2] = scr_gettext("obj_undynetrigger_boss_492")
        global.msg[3] = scr_gettext("obj_undynetrigger_boss_493")
        global.msg[4] = scr_gettext("obj_undynetrigger_boss_494")
        global.msg[5] = scr_gettext("obj_undynetrigger_boss_495")
        global.msg[6] = scr_gettext("obj_undynetrigger_boss_496")
        global.msg[7] = scr_gettext("obj_undynetrigger_boss_497")
        global.msg[8] = scr_gettext("obj_undynetrigger_boss_498")
        global.msg[9] = scr_gettext("obj_undynetrigger_boss_499")
        global.msg[10] = scr_gettext("obj_undynetrigger_boss_500")
        global.msg[11] = scr_gettext("obj_undynetrigger_boss_501")
        global.msg[12] = scr_gettext("obj_undynetrigger_boss_502")
        global.msg[13] = scr_gettext("obj_undynetrigger_boss_503")
        global.msg[14] = scr_gettext("obj_undynetrigger_boss_504")
        global.msg[15] = scr_gettext("obj_undynetrigger_boss_505")
        global.msg[16] = scr_gettext("obj_undynetrigger_boss_506")
        global.msg[17] = scr_gettext("obj_undynetrigger_boss_507")
        global.msg[18] = scr_gettext("obj_undynetrigger_boss_508")
        global.msg[19] = scr_gettext("obj_undynetrigger_boss_509")
        g = instance_create(0, 0, obj_dialoguer)
        g.side = 1
        con = 25
    }
}
