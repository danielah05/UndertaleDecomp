myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_knock_room_62")
if (room == room_water_undyneyard)
{
    global.msg[0] = scr_gettext("obj_knock_room_65")
    if (FL_UndyneStatus == UndyneStatus.Spared && instance_exists(obj_papyrus_room))
        global.msg[0] = scr_gettext("obj_knock_room_67")
    if (FL_UndyneStatus == UndyneStatus.Killed)
        global.msg[0] = scr_gettext("obj_knock_room_69")
    if (FL_UndyneStatus == UndyneStatus.SparedWithoutWater)
        global.msg[0] = scr_gettext("obj_knock_room_71")
    if (FL_UndyneDateStatus >= UndyneDateStatus.Unused)
        global.msg[0] = scr_gettext("obj_knock_room_75")
}
if (room == room_tundra_town2 && x > 200)
{
    global.msg[0] = scr_gettext("obj_knock_room_81")
    global.msg[1] = scr_gettext("obj_knock_room_82")
    global.msg[2] = scr_gettext("obj_knock_room_83")
    if (read > 0)
        global.msg[0] = scr_gettext("obj_knock_room_86")
}
if (room == room_tundra_town2 && x < 200)
{
    global.msg[0] = scr_gettext("obj_knock_room_91")
    if (read == 1)
        global.msg[0] = scr_gettext("obj_knock_room_93")
    if (read > 1)
        global.msg[0] = scr_gettext("obj_knock_room_95")
    if (scr_murderlv() >= MurderLevel.Lv7TundraKills)
        global.msg[0] = scr_gettext("obj_knock_room_99")
}
if (room == room_fire_hoteldoors)
{
    if (x < 166)
        global.msc = 860
    if (x > 240)
        global.msc = 862
    if (x > 300)
        global.msc = 864
    if (scr_murderlv() >= MurderLevel.Lv12UndyneEXKilled)
    {
        global.msc = 0
        global.msg[0] = scr_gettext("obj_knock_room_113")
    }
}
read += 1
mydialoguer = instance_create(0, 0, obj_dialoguer)
