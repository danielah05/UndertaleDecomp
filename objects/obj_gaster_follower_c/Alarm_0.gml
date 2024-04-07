myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_gaster_follower_c_95")
global.msg[1] = scr_gettext("obj_gaster_follower_c_96")
global.msg[2] = scr_gettext("obj_gaster_follower_c_97")
global.msg[3] = scr_gettext("obj_gaster_follower_c_98")
global.msg[4] = scr_gettext("obj_gaster_follower_c_99")
if (talkedto >= 1)
{
    global.msg[0] = scr_gettext("obj_gaster_follower_c_103")
    global.msg[1] = scr_gettext("obj_gaster_follower_c_104")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
