myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_garbagepile_70")
if (talkedto == 1)
	global.msg[0] = scr_gettext("obj_garbagepile_71")
if (talkedto == 1 && FL_NameColor > 0)
	global.msg[0] = scr_gettext("obj_garbagepile_72")
if (talkedto == 2)
	global.msg[0] = scr_gettext("obj_garbagepile_73")
if (talkedto == 3)
	global.msg[0] = scr_gettext("obj_garbagepile_74")
if (talkedto == 4)
	global.msg[0] = scr_gettext("obj_garbagepile_75")
if (talkedto == 5)
	global.msg[0] = scr_gettext("obj_garbagepile_76")
mydialoguer = instance_create(0, 0, obj_dialoguer)
object_index.talkedto += 1
