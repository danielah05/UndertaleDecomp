if (t == 0 && global.interact == 0)
{
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msc = 0
    t = 1
    if (FL_DisableAlphysStatuses == 1)
        donotcall = 1
    if (room == room_fire_apron)
    {
        global.msc = 754
        if (FL_GotNapstablookFriendReq == 1)
            donotcall = 1
        FL_GotNapstablookFriendReq = 1
    }
    if (room == room_fire_boysnightout && ax == 0)
    {
        if (FL_AlphysStatusConvoCounter < 25)
        {
            if (FL_AlphysStatusConvoCounter < 24 && ax == 0)
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_112")
                FL_AlphysStatusConvoCounter = 24
            }
            if (FL_AlphysStatusConvoCounter < 25 && ax == 0)
            {
                if (FL_PapyrusStatus == PapyrusStatus.Killed)
                    donotcall = 1
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_120")
                FL_AlphysStatusConvoCounter = 25
            }
        }
        else
            donotcall = 1
    }
    if (room == room_fire_mewmew2 && ax == 0)
    {
        if (FL_AlphysStatusConvoCounter < 23)
        {
            if (FL_AlphysStatusConvoCounter < 21 && ax == 0)
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_142")
                global.msg[1] = scr_gettext("obj_notify_room_143")
                FL_AlphysStatusConvoCounter = 21
            }
            if (FL_AlphysStatusConvoCounter < 22 && ax == 0)
            {
                if (FL_PapyrusStatus == PapyrusStatus.Killed)
                    donotcall = 1
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_151")
                FL_AlphysStatusConvoCounter = 22
            }
            if (FL_AlphysStatusConvoCounter < 23 && ax == 0)
            {
                if (FL_PapyrusStatus == PapyrusStatus.Killed)
                    donotcall = 1
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_159")
                global.msg[1] = scr_gettext("obj_notify_room_160")
                FL_AlphysStatusConvoCounter = 23
            }
        }
        else
            donotcall = 1
    }
    if (room == room_fire_rpuzzle && ax == 0)
    {
        if (FL_AlphysStatusConvoCounter < 20)
        {
            global.msg[0] = scr_gettext("obj_notify_room_178")
            FL_AlphysStatusConvoCounter = 20
        }
        else
            donotcall = 1
    }
    if (room == room_fire_walkandbranch && ax == 0)
    {
        if (FL_AlphysStatusConvoCounter < 19)
        {
            if (FL_AlphysStatusConvoCounter < 16 && ax == 0)
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_197")
                global.msg[1] = scr_gettext("obj_notify_room_198")
                FL_AlphysStatusConvoCounter = 16
            }
            if (FL_AlphysStatusConvoCounter < 17 && ax == 0)
            {
                if (FL_PapyrusStatus == PapyrusStatus.Killed)
                    donotcall = 1
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_206")
                global.msg[1] = scr_gettext("obj_notify_room_207")
                global.msg[2] = scr_gettext("obj_notify_room_208")
                global.msg[3] = scr_gettext("obj_notify_room_209")
                FL_AlphysStatusConvoCounter = 17
            }
            if (FL_AlphysStatusConvoCounter < 18 && ax == 0)
            {
                if (FL_PapyrusStatus == PapyrusStatus.Killed)
                    donotcall = 1
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_217")
                FL_AlphysStatusConvoCounter = 18
            }
            if (FL_AlphysStatusConvoCounter < 19 && ax == 0)
            {
                if (FL_PapyrusStatus == PapyrusStatus.Killed)
                    donotcall = 1
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_225")
                FL_AlphysStatusConvoCounter = 19
            }
        }
        else
            donotcall = 1
    }
    if (room == room_fire_turn)
    {
        if (FL_AlphysStatusConvoCounter < 13)
        {
            global.msg[0] = scr_gettext("obj_notify_room_243")
            FL_AlphysStatusConvoCounter = 13
        }
        else
            donotcall = 1
    }
    if (room == room_fire9 && ax == 0)
    {
        if (FL_AlphysStatusConvoCounter < 12)
        {
            ax = 1
            global.msg[0] = scr_gettext("obj_notify_room_258")
            FL_AlphysStatusConvoCounter = 12
        }
        else
            donotcall = 1
    }
    if (room == room_fire7 && ax == 0)
    {
        if (FL_AlphysStatusConvoCounter < 11)
        {
            if (FL_AlphysStatusConvoCounter < 10)
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_279")
                FL_AlphysStatusConvoCounter = 10
            }
            else
            {
                global.msg[0] = scr_gettext("obj_notify_room_284")
                global.msg[1] = scr_gettext("obj_notify_room_285")
                FL_AlphysStatusConvoCounter = 11
                ax = 1
            }
        }
        else
            donotcall = 1
    }
    if (room == room_fire_lasers1 && ax == 0)
    {
        if (FL_AlphysStatusConvoCounter < 9)
        {
            if (FL_AlphysStatusConvoCounter < 8)
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_307")
                global.msg[1] = scr_gettext("obj_notify_room_308")
                FL_AlphysStatusConvoCounter = 8
            }
            else
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_314")
                FL_AlphysStatusConvoCounter = 9
            }
        }
        else
            donotcall = 1
    }
    if (room == room_fire6 && ax == 0)
    {
        if (FL_AlphysStatusConvoCounter < 7)
        {
            if (FL_AlphysStatusConvoCounter < 6)
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_336")
                FL_AlphysStatusConvoCounter = 6
            }
            else
            {
                ax = 1
                global.msg[0] = scr_gettext("obj_notify_room_342")
                global.msg[1] = scr_gettext("obj_notify_room_343")
                FL_AlphysStatusConvoCounter = 7
            }
        }
        else
            donotcall = 1
    }
    if (room == room_fire3 && FL_AlphysStatusConvoCounter > 3)
        donotcall = 1
    if (room == room_fire5 && FL_AlphysStatusConvoCounter > 4)
        donotcall = 1
    if (room == room_fire5 && FL_AlphysStatusConvoCounter == 4)
    {
        global.msg[0] = scr_gettext("obj_notify_room_372")
        FL_AlphysStatusConvoCounter = 5
    }
    if (room == room_fire3 && FL_AlphysStatusConvoCounter == 3)
    {
        global.msg[0] = scr_gettext("obj_notify_room_378")
        FL_AlphysStatusConvoCounter = 4
    }
    if (room == room_fire3 && FL_AlphysStatusConvoCounter == 2)
    {
        global.msg[0] = scr_gettext("obj_notify_room_385")
        FL_AlphysStatusConvoCounter = 3
    }
    if (room == room_fire3 && FL_AlphysStatusConvoCounter < 2)
    {
        global.msg[0] = scr_gettext("obj_notify_room_391")
        FL_AlphysStatusConvoCounter = 2
    }
    if (room == room_water12 && FL_PapyrusCallConvoCounter < 1)
    {
        global.msg[0] = scr_gettext("obj_notify_room_398")
        FL_PapyrusCallConvoCounter = 1
        instance_create(380, 40, obj_stalkerflowey)
        global.msc = 632
        if (FL_DisableAlphysStatuses == 1)
            donotcall = 1
    }
    if (donotcall == 0)
        snd_play(snd_textnoise)
    if (donotcall == 0)
    {
        mb = instance_create(obj_mainchara.x, (obj_mainchara.y - 10), obj_musblcon)
        instance_create(0, 0, obj_dialoguer)
        global.interact = 1
    }
}
