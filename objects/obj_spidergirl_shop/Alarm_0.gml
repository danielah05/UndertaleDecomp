myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_spidergirl_shop_74")
global.msg[1] = scr_gettext("obj_spidergirl_shop_75")
if (talkedto > 0)
	global.msg[0] = scr_gettext("obj_spidergirl_shop_76")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
