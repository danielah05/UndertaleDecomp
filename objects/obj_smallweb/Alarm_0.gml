myinteract = 3
global.msc = 514
if (room == room_fire_spidershop)
    global.msc = 746
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (room == room_water_blookhouse)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_smallweb_64")
    global.msg[1] = scr_gettext("obj_smallweb_65")
}
else
    instance_create(0, 0, obj_golddisplay)
mydialoguer = instance_create(0, 0, obj_dialoguer)
