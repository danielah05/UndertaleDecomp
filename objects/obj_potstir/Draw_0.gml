draw_set_color(c_white)
ossafe_fill_rectangle((view_xview_get(view_current) + 16), (view_yview_get(view_current) + 6), (view_xview_get(view_current) + 304), (view_yview_get(view_current) + 32))
draw_set_color(c_black)
ossafe_fill_rectangle((view_xview_get(view_current) + 19), (view_yview_get(view_current) + 9), (view_xview_get(view_current) + 301), (view_yview_get(view_current) + 29))
scr_setfont(fnt_maintext)
draw_set_color(c_white)
scr_drawtext_icons(30, 11, scr_gettext("obj_potstir_64"))
if control_check_pressed(InteractButton)
{
	stir += 1
	pot.image_index += 1
}
stime += 1
if (stime > 90 && stir <= 70 && sval == 0)
{
	sval = 1
	global.msc = 0
	global.facechoice = 5
	global.typer = 37
	global.faceemotion = 1
	global.msg[0] = scr_gettext("obj_potstir_81")
	gg = instance_create(0, 0, obj_dialoguer)
	gg.side = 1
}
if (stime > 150 && stir <= 70 && sval == 1)
{
	sval = 2
	global.msc = 0
	global.facechoice = 5
	global.typer = 37
	global.faceemotion = 2
	global.msg[0] = scr_gettext("obj_potstir_93")
	gg = instance_create(0, 0, obj_dialoguer)
	gg.side = 1
}
if (stime > 210 && stir <= 70 && sval == 2)
{
	sval = 3
	global.msc = 0
	global.facechoice = 5
	global.typer = 37
	global.faceemotion = 6
	global.msg[0] = scr_gettext("obj_potstir_106")
	gg = instance_create(0, 0, obj_dialoguer)
	gg.side = 1
}
if (stime > 300 || stir > 70)
{
	if (instance_exists(OBJ_WRITER) == false)
	{
		sval = 99
		global.msc = 0
		global.facechoice = 5
		global.typer = 37
		global.faceemotion = 6
		global.msg[0] = scr_gettext("obj_potstir_119")
		gg = instance_create(0, 0, obj_dialoguer)
		gg.side = 1
		obj_undynedate_inside.con = 210
		instance_destroy()
	}
}
