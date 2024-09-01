myinteract = 3
global.msc = 0
global.typer = 17
global.facechoice = 3
global.faceemotion = 0
if (room == room_tundra6)
{
    global.msg[0] = scr_gettext("obj_sans_room_114")
    global.msg[1] = scr_gettext("obj_sans_room_115")
    global.msg[2] = scr_gettext("obj_sans_room_116")
    global.msg[3] = scr_gettext("obj_sans_room_117")
    global.msg[4] = scr_gettext("obj_sans_room_118")
    global.msg[5] = scr_gettext("obj_sans_room_119")
    global.msg[6] = scr_gettext("obj_sans_room_120")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_sans_room_123")
}
if (room == room_tundra7)
{
    global.msg[0] = scr_gettext("obj_sans_room_135")
    global.msg[1] = scr_gettext("obj_sans_room_136")
    global.msg[2] = scr_gettext("obj_sans_room_137")
    global.msg[3] = scr_gettext("obj_sans_room_138")
    global.msg[4] = scr_gettext("obj_sans_room_139")
    global.msg[5] = scr_gettext("obj_sans_room_140")
    global.msg[6] = scr_gettext("obj_sans_room_141")
    if (scr_murderlv() >= MurderLevel.Lv3DoggoKilled && FL_SparedSpecific == 0)
        global.msg[0] = scr_gettext("obj_sans_room_145")
}
if (room == room_tundra8)
    global.msc = 235
if (room == room_tundra9)
{
    if (FL_HarderPuzzleChoice == Choices.JuniorJumble)
    {
        global.msg[0] = scr_gettext("obj_sans_room_160")
        global.msg[1] = scr_gettext("obj_sans_room_161")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_sans_room_166")
        global.msg[1] = scr_gettext("obj_sans_room_167")
    }
    if (scr_murderlv() >= MurderLevel.Lv3DoggoKilled)
    {
        if (FL_InteractedWithCrossword == 0)
        {
            global.msg[0] = scr_gettext("obj_sans_room_175")
            global.msg[1] = scr_gettext("obj_sans_room_176")
            global.msg[2] = scr_gettext("obj_sans_room_177")
            global.msg[3] = scr_gettext("obj_sans_room_178")
        }
        else
        {
            global.msg[0] = scr_gettext("obj_sans_room_182")
            global.msg[1] = scr_gettext("obj_sans_room_183")
        }
    }
}
if (room == room_tundra_randoblock)
{
    global.msg[0] = scr_gettext("obj_sans_room_191")
    global.msg[1] = scr_gettext("obj_sans_room_192")
    global.msg[2] = scr_gettext("obj_sans_room_193")
    global.msg[3] = scr_gettext("obj_sans_room_194")
    if (scr_murderlv() >= MurderLevel.Lv4DogiKilled)
        global.msg[0] = scr_gettext("obj_sans_room_198")
}
if (room == room_tundra_xoxopuzz)
{
    ossafe_ini_open("undertale.ini")
    M1 = ini_read_real("Sans", "M1", 0)
    ossafe_ini_close()
    if (FL_XOXOResetCounter >= 0)
    {
        global.msg[0] = scr_gettext("obj_sans_room_211")
        global.msg[1] = scr_gettext("obj_sans_room_212")
        global.msg[2] = scr_gettext("obj_sans_room_213")
    }
    if (FL_XOXOResetCounter == 0 && M1 > 1)
    {
        global.msg[0] = scr_gettext("obj_sans_room_217")
        global.msg[1] = scr_gettext("obj_sans_room_218")
        global.msg[2] = scr_gettext("obj_sans_room_219")
    }
    if (FL_XOXOResetCounter > 5)
    {
        global.msg[0] = scr_gettext("obj_sans_room_223")
        global.msg[1] = scr_gettext("obj_sans_room_224")
    }
}
if (room == room_tundra_iceexit_new)
{
    global.msg[0] = scr_gettext("obj_sans_room_237")
    if (obj_doublesans.talkedto > 0)
        global.msg[0] = scr_gettext("obj_sans_room_238")
}
if (room == room_tundra_dangerbridge)
{
    ossafe_ini_open("undertale.ini")
    PK = ini_read_real("Papyrus", "PK", 0)
    ossafe_ini_close()
    global.msg[0] = scr_gettext("obj_sans_room_246")
    global.msg[1] = scr_gettext("obj_sans_room_247")
    if (PK > 0)
    {
        global.msg[0] = scr_gettext("obj_sans_room_250")
        global.msg[1] = scr_gettext("obj_sans_room_251")
    }
    if (scr_murderlv() >= MurderLevel.Lv5GreaterDogKilled && FL_SparedSpecific == 0)
    {
        global.msg[0] = scr_gettext("obj_sans_room_256")
        global.msg[1] = scr_gettext("obj_sans_room_257")
        global.msg[2] = scr_gettext("obj_sans_room_258")
        global.msg[3] = scr_gettext("obj_sans_room_259")
        global.msg[4] = scr_gettext("obj_sans_room_260")
        global.msg[5] = scr_gettext("obj_sans_room_261")
        global.msg[6] = scr_gettext("obj_sans_room_262")
        global.msg[7] = scr_gettext("obj_sans_room_263")
        global.msg[8] = scr_gettext("obj_sans_room_264")
        s_click = 1
        with (obj_mainchara)
            uncan = 1
    }
}
if (room == room_water11)
{
    if (FL_HaveUmbrella == 0)
        global.msc = 551
    if (FL_HaveUmbrella == 1)
    {
        global.msc = 0
        global.msg[0] = scr_gettext("obj_sans_room_280")
        global.msg[1] = scr_gettext("obj_sans_room_281")
    }
}
if (room == room_fire_hotdog)
{
    instance_create(0, 0, obj_golddisplay)
    global.msc = 685
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
obj_sans_room.talkedto += 1
