myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_readable_room5_64")
if (room == room_asrielroom_final)
{
    global.msg[0] = scr_gettext("obj_readable_room5_68")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room5_69")
}
if (room == room_asgoreroom)
{
    global.msg[0] = scr_gettext("obj_readable_room5_74")
    global.msg[1] = scr_gettext("obj_readable_room5_75")
    if (FL_TruePacifist == true)
        global.msg[1] = scr_gettext("obj_readable_room5_78")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room5_80")
    if (x < 208)
        global.msg[0] = scr_gettext("obj_readable_room5_82")
}
if (room == room_tundra_xoxopuzz)
    global.msc = 696
if (room == room_fire_lab1)
{
    global.msg[0] = scr_gettext("obj_readable_room5_92")
    if (global.plot < 126 && scr_murderlv() < 12)
        global.msg[0] = scr_gettext("obj_readable_room5_93")
    if (y >= 125 && x > 800)
        global.msc = 827
}
if (room == room_fire_lab2)
{
    if (x < 130)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_104")
        global.msg[1] = scr_gettext("obj_readable_room5_105")
    }
    if (x < 204 && x > 144)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_110")
        global.msg[1] = scr_gettext("obj_readable_room5_111")
    }
    if (x < 575 && x > 474)
        global.msg[0] = scr_gettext("obj_readable_room5_116")
    if (x > 575)
        global.msc = 647
}
if (room == room_water_piano)
{
    global.msg[0] = scr_gettext("obj_readable_room5_126")
    global.msg[1] = scr_gettext("obj_readable_room5_127")
}
if (room == room_water7)
{
    global.msg[0] = scr_gettext("obj_readable_room5_131")
    global.msg[1] = scr_gettext("obj_readable_room5_132")
}
if (room == room_tundra_library)
{
    global.msg[0] = scr_gettext("obj_readable_room5_138")
    global.msg[1] = scr_gettext("obj_readable_room5_139")
    global.msg[2] = scr_gettext("obj_readable_room5_140")
}
if (room == room_water_undynehouse)
{
    global.msg[0] = scr_gettext("obj_readable_room5_145")
    global.msg[1] = scr_gettext("obj_readable_room5_146")
}
if (room == room_water_undynehouse && x < 80)
{
    global.facechoice = 5
    global.faceemotion = 4
    global.typer = 37
    global.msg[0] = scr_gettext("obj_readable_room5_154")
    global.msg[1] = scr_gettext("obj_readable_room5_155")
}
if (room == room_fire2)
{
    global.msg[0] = scr_gettext("obj_readable_room5_160")
    if (FL_PouredWaterCounter > 7)
        global.msg[0] = scr_gettext("obj_readable_room5_163")
    if (FL_PouredWaterCounter > 15)
        global.msg[0] = scr_gettext("obj_readable_room5_167")
    if (FL_PouredWaterCounter > 15 && FL_TruePacifist == true)
        global.msg[0] = scr_gettext("obj_readable_room5_171")
}
if (room == room_fire_lab1 && x > 828 && x < 868 && y < 90)
    global.msg[0] = scr_gettext("obj_readable_room5_177")
if (room == room_tundra_sansroom)
{
    if (x < 128)
    {
        if (FL_GotSansRoomKey < 3)
        {
            global.msg[0] = scr_gettext("obj_readable_room5_186")
            global.msg[1] = scr_gettext("obj_readable_room5_187")
            FL_GotSansRoomKey = 3
        }
        else
            global.msg[0] = scr_gettext("obj_readable_room5_192")
    }
    else
        global.msg[0] = scr_gettext("obj_readable_room5_197")
}
if (room == room_fire_cookingshow)
    global.msg[0] = scr_gettext("obj_readable_room5_203")
if (room == room_dogshrine)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_readable_room5_209")
    if (dognumber == 1)
        global.msc = 950
    if (dognumber == 2)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_216")
        global.msg[1] = scr_gettext("obj_readable_room5_217")
        global.msg[2] = scr_gettext("obj_readable_room5_218")
    }
    if (dognumber == 3)
        global.msc = 955
    if (dognumber == 4)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_226")
        global.msg[1] = scr_gettext("obj_readable_room5_227")
    }
    if (dognumber == 5)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_231")
        global.msg[1] = scr_gettext("obj_readable_room5_232")
    }
    if (dognumber == 6)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_236")
        global.msg[1] = scr_gettext("obj_readable_room5_237")
    }
    if (dognumber == 7)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_241")
        global.msg[1] = scr_gettext("obj_readable_room5_242")
    }
    if (dognumber == 8)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_246")
        global.msg[1] = scr_gettext("obj_readable_room5_247")
        global.msg[2] = scr_gettext("obj_readable_room5_248")
    }
    if (dognumber == 9)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_252")
        global.msg[1] = scr_gettext("obj_readable_room5_253")
    }
    if (dognumber == 10)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_257")
        global.msg[1] = scr_gettext("obj_readable_room5_258")
        global.msg[2] = scr_gettext("obj_readable_room5_259")
        global.msg[3] = scr_gettext("obj_readable_room5_260")
    }
    if (dognumber == 11)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_264")
        global.msg[1] = scr_gettext("obj_readable_room5_265")
    }
    if (dognumber == 12)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_269")
        global.msg[1] = scr_gettext("obj_readable_room5_270")
        global.msg[2] = scr_gettext("obj_readable_room5_271")
        global.msg[3] = scr_gettext("obj_readable_room5_272")
    }
}
if (room == room_dogshrine_ruined)
{
    if (locked == true)
    {
        global.msg[0] = scr_gettext("obj_readable_room5_ds2_0")
        global.msg[1] = scr_gettext("obj_readable_room5_ds2_1")
        global.msg[2] = scr_gettext("obj_readable_room5_ds2_2")
        snd_stop(mus_sfx_dogseal)
        snd_play(mus_sfx_dogseal)
    }
    else
    {
        global.msg[0] = scr_gettext("obj_readable_room5_ds2_3")
        global.msg[1] = scr_gettext("obj_readable_room5_ds2_4")
        if (read >= 1)
        {
            global.msg[0] = scr_gettext("obj_readable_room5_ds2_5")
            global.msg[1] = scr_gettext("obj_readable_room5_ds2_6")
            global.msg[2] = scr_gettext("obj_readable_room5_ds2_7")
        }
    }
    read += 1
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
