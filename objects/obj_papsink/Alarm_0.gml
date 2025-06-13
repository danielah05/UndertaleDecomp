myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if instance_exists(obj_papyrusparent)
{
	if (FL_PapyrusSinkEventOccured == 0)
	{
		scr_papface(0, 0)
		conversation = 1
		global.msg[1] = scr_gettext("obj_papsink_100")
		global.msg[2] = scr_gettext("obj_papsink_101")
	}
	else
	{
		scr_papface(0, 3)
		global.msg[1] = scr_gettext("obj_papsink_106")
	}
}
else
{
	global.msg[0] = scr_gettext("obj_papsink_111")
	conversation = 0
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
