myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_ficus_72")
if (scr_murderlv() >= 12)
    global.msg[0] = scr_gettext("obj_ficus_75")
if (room == room_fire_restaurant)
{
    if (x > 160 && x < 260)
        global.msg[0] = scr_gettext("obj_ficus_81")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
