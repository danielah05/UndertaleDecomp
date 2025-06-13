myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_chipdoor_l_78")
if (sprite_index == spr_chipdoor_green)
	global.msg[0] = scr_gettext("obj_chipdoor_l_79")
if (global.plot > 132 && room == room_fire7)
	global.msg[0] = scr_gettext("obj_chipdoor_l_82")
if (global.plot > 163 && room == room_fire_walkandbranch2)
	global.msg[0] = scr_gettext("obj_chipdoor_l_87")
mydialoguer = instance_create(0, 0, obj_dialoguer)
