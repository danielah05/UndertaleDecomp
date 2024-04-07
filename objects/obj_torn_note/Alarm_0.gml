myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_torn_note_63")
if (room == room_truelab_hub)
{
    global.msg[0] = scr_gettext("obj_torn_note_67")
    global.msg[1] = scr_gettext("obj_torn_note_68")
    global.msg[2] = scr_gettext("obj_torn_note_69")
}
if (room == room_truelab_redlever)
{
    global.msg[0] = scr_gettext("obj_torn_note_74")
    global.msg[1] = scr_gettext("obj_torn_note_75")
    global.msg[2] = scr_gettext("obj_torn_note_76")
}
if (room == room_truelab_bluelever)
{
    global.msg[0] = scr_gettext("obj_torn_note_81")
    global.msg[1] = scr_gettext("obj_torn_note_82")
    global.msg[2] = scr_gettext("obj_torn_note_83")
}
if (room == room_truelab_greenlever)
{
    global.msg[0] = scr_gettext("obj_torn_note_88")
    global.msg[1] = scr_gettext("obj_torn_note_89")
    global.msg[2] = scr_gettext("obj_torn_note_90")
}
if (room == room_truelab_tv)
{
    global.msg[0] = scr_gettext("obj_torn_note_95")
    global.msg[1] = scr_gettext("obj_torn_note_96")
    global.msg[2] = scr_gettext("obj_torn_note_97")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
