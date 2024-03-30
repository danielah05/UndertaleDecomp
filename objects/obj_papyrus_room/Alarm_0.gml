myinteract = 3
global.msc = 0
global.typer = 19
global.facechoice = 4
global.faceemotion = 0
if (room == room_tundra_xoxopuzz)
{
    global.msg[0] = scr_gettext("obj_papyrus_room_119")
    global.msg[1] = scr_gettext("obj_papyrus_room_120")
    global.msg[2] = scr_gettext("obj_papyrus_room_121")
    global.msg[3] = scr_gettext("obj_papyrus_room_122")
    global.msg[4] = scr_gettext("obj_papyrus_room_123")
    if instance_exists(obj_papyrus5)
    {
        if (x > (obj_papyrus5.x - 100))
        {
            sprite_index = dtsprite
            global.msg[0] = scr_gettext("obj_papyrus_room_129")
            global.msg[1] = scr_gettext("obj_papyrus_room_130")
            global.msg[2] = scr_gettext("obj_papyrus_room_131")
            global.msg[3] = scr_gettext("obj_papyrus_room_132")
            global.msg[4] = scr_gettext("obj_papyrus_room_133")
            global.msg[5] = scr_gettext("obj_papyrus_room_134")
            if (talkedto == 1)
            {
                global.msg[0] = scr_gettext("obj_papyrus_room_135")
                global.msg[1] = scr_gettext("obj_papyrus_room_136")
            }
            if (talkedto == 2)
                global.msc = 692
            if (talkedto > 2)
                global.msc = 694
        }
    }
}
if (room == room_water_undyneyard)
{
    dir = 1
    d = 0
    if (global.plot < 122)
        d = 1
    if (FL_PapyrusCallConvoCounter < 2)
        d = 1
    if (FL_PapyrusStatus == PapyrusStatus.Killed)
        d = 1
    if (FL_PapyrusDateCounter < 3)
        d = 1
    if (FL_UndyneStatus == UndyneStatus.Killed)
        d = 1
    if (FL_UndyneStatus == UndyneStatus.SparedWithoutWater)
        d = 1
    if (global.kills > 0)
        d = 1
    if (d == 1)
    {
        global.msg[0] = scr_gettext("obj_papyrus_room_157")
        if (global.kills > 0)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_161")
            global.msg[1] = scr_gettext("obj_papyrus_room_162")
            global.msg[2] = scr_gettext("obj_papyrus_room_163")
            global.msg[3] = scr_gettext("obj_papyrus_room_164")
            global.msg[4] = scr_gettext("obj_papyrus_room_165")
            global.msg[5] = scr_gettext("obj_papyrus_room_166")
            global.msg[6] = scr_gettext("obj_papyrus_room_167")
            global.msg[7] = scr_gettext("obj_papyrus_room_168")
            global.msg[8] = scr_gettext("obj_papyrus_room_169")
            global.msg[9] = scr_gettext("obj_papyrus_room_170")
            global.msg[10] = scr_gettext("obj_papyrus_room_171")
            global.msg[11] = scr_gettext("obj_papyrus_room_172")
            global.msg[12] = scr_gettext("obj_papyrus_room_173")
            if (talkedto > 0)
            {
                global.msg[0] = scr_gettext("obj_papyrus_room_176")
                global.msg[1] = scr_gettext("obj_papyrus_room_177")
                global.msg[2] = scr_gettext("obj_papyrus_room_178")
                global.msg[3] = scr_gettext("obj_papyrus_room_179")
            }
        }
        if (FL_UndyneStatus == UndyneStatus.Killed)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_185")
            global.msg[1] = scr_gettext("obj_papyrus_room_186")
            global.msg[2] = scr_gettext("obj_papyrus_room_187")
            global.msg[3] = scr_gettext("obj_papyrus_room_188")
            global.msg[4] = scr_gettext("obj_papyrus_room_189")
            global.msg[5] = scr_gettext("obj_papyrus_room_190")
            global.msg[6] = scr_gettext("obj_papyrus_room_191")
            global.msg[7] = scr_gettext("obj_papyrus_room_192")
            global.msg[8] = scr_gettext("obj_papyrus_room_193")
            if (talkedto > 0)
                global.msg[0] = scr_gettext("obj_papyrus_room_196")
        }
        if (FL_UndyneStatus == UndyneStatus.SparedWithoutWater)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_202")
            global.msg[1] = scr_gettext("obj_papyrus_room_203")
            global.msg[2] = scr_gettext("obj_papyrus_room_204")
            global.msg[3] = scr_gettext("obj_papyrus_room_205")
            global.msg[4] = scr_gettext("obj_papyrus_room_206")
            global.msg[5] = scr_gettext("obj_papyrus_room_207")
            global.msg[6] = scr_gettext("obj_papyrus_room_208")
            global.msg[7] = scr_gettext("obj_papyrus_room_209")
            global.msg[8] = scr_gettext("obj_papyrus_room_210")
            global.msg[9] = scr_gettext("obj_papyrus_room_211")
            if (talkedto > 0)
                global.msg[0] = scr_gettext("obj_papyrus_room_214")
        }
        if (global.plot < 122)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_220")
            global.msg[1] = scr_gettext("obj_papyrus_room_221")
            global.msg[2] = scr_gettext("obj_papyrus_room_222")
            global.msg[3] = scr_gettext("obj_papyrus_room_223")
            if (talkedto > 0)
                global.msg[0] = scr_gettext("obj_papyrus_room_226")
        }
    }
    if (d == 0)
    {
        global.msc = 698
        if (talkedto > 0)
            global.msc = 700
    }
}
if (room == room_tundra_town)
{
    global.msg[0] = scr_gettext("obj_papyrus_room_244")
    global.msg[1] = scr_gettext("obj_papyrus_room_245")
    if (FL_PapyrusCallConvoCounter == 0)
    {
        global.msg[0] = scr_gettext("obj_papyrus_room_248")
        global.msg[1] = scr_gettext("obj_papyrus_room_249")
    }
    if (FL_PapyrusCallConvoCounter == 1)
    {
        global.msg[0] = scr_gettext("obj_papyrus_room_253")
        global.msg[1] = scr_gettext("obj_papyrus_room_254")
        global.msg[2] = scr_gettext("obj_papyrus_room_255")
    }
    if instance_exists(obj_undyne_friendc)
    {
        global.msg[0] = scr_gettext("obj_papyrus_room_259")
        global.msg[1] = scr_gettext("obj_papyrus_room_260")
        if (global.plot > 175)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_263")
            global.msg[1] = scr_gettext("obj_papyrus_room_264")
            global.msg[2] = scr_gettext("obj_papyrus_room_265")
            global.msg[3] = scr_gettext("obj_papyrus_room_266")
            global.msg[4] = scr_gettext("obj_papyrus_room_267")
        }
        if (FL_DatedAlphys == 8)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_272")
            global.msg[1] = scr_gettext("obj_papyrus_room_273")
        }
        if (FL_DatedAlphys == 9)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_278")
            global.msg[1] = scr_gettext("obj_papyrus_room_279")
            global.msg[2] = scr_gettext("obj_papyrus_room_280")
            global.msg[3] = scr_gettext("obj_papyrus_room_281")
            global.msg[4] = scr_gettext("obj_papyrus_room_282")
            global.msg[5] = scr_gettext("obj_papyrus_room_283")
        }
        if (FL_DatedAlphys == 10)
        {
            global.msg[0] = scr_gettext("obj_papyrus_room_287")
            global.msg[1] = scr_gettext("obj_papyrus_room_288")
            global.msg[2] = scr_gettext("obj_papyrus_room_289")
            global.msg[3] = scr_gettext("obj_papyrus_room_290")
        }
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
