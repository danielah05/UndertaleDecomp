myinteract = 3
global.msc = 565
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (instance_exists(obj_papyrus_room) || instance_exists(obj_papyrus_houseoutside))
{
	global.facechoice = 4
	global.typer = 19
	global.faceemotion = 0
	global.msc = 0
	global.msg[0] = scr_gettext("obj_papmailbox_74")
	global.msg[1] = scr_gettext("obj_papmailbox_75")
	if (talkedto > 0)
	{
		global.msg[0] = scr_gettext("obj_papmailbox_78")
		global.msg[1] = scr_gettext("obj_papmailbox_79")
	}
	if instance_exists(obj_undyne_friendc)
	{
		h = 0
		scr_itemcheck(Items.UndynesLetter)
		if (haveit == true)
			h = 1
		scr_itemcheck(Items.UndynesLetterEX)
		if (haveit == true)
			h = 1
		if (h == 1)
		{
			global.facechoice = 5
			global.typer = 37
			global.faceemotion = 1
			global.msg[0] = scr_gettext("obj_papmailbox_96")
			scr_papface(1, 1)
			global.msg[2] = scr_gettext("obj_papmailbox_98")
			global.msg[3] = scr_gettext("obj_papmailbox_99")
			scr_undface(4, 1)
			global.msg[5] = scr_gettext("obj_papmailbox_101")
			global.msg[6] = scr_gettext("obj_papmailbox_102")
			global.msg[7] = scr_gettext("obj_papmailbox_103")
			scr_papface(8, 5)
			global.msg[9] = scr_gettext("obj_papmailbox_105")
			global.msg[10] = scr_gettext("obj_papmailbox_106")
			scr_undface(11, 9)
			global.msg[12] = scr_gettext("obj_papmailbox_108")
		}
	}
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
