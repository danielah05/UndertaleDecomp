myinteract = 3
global.msc = 866
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_hotelreceptionist_95")
if (FL_TruePacifist == true)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_hotelreceptionist_100")
    global.msg[1] = scr_gettext("obj_hotelreceptionist_101")
}
if (FL_KilledMettaton == 1)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_hotelreceptionist_107")
    global.msg[1] = scr_gettext("obj_hotelreceptionist_108")
    global.msg[2] = scr_gettext("obj_hotelreceptionist_109")
    global.msg[3] = scr_gettext("obj_hotelreceptionist_110")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
