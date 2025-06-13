if (con == 1)
{
	con = 2
	nowx = view_xview_get(0)
	obj_mainchara.cutscene = true
}
if (con == 2)
{
	view_xview_set(0, (view_xview_get(0) + 3))
	if (view_xview_get(0) >= (nowx + 78))
	{
		view_xview_set(0, (nowx + 78))
		con = 2.1
		alarm[4] = 30
	}
}
if (con == 3.1)
{
	global.facechoice = 0
	global.faceemotion = 0
	global.typer = 27
	global.msc = 0
	global.msg[0] = scr_gettext("obj_killerlab_event_113") //* OH^1, THERE YOU ARE./
	global.msg[1] = scr_gettext("obj_killerlab_event_114") //\\M5* YOU UGLY LITTLE CREATURE^1.&* YOU'VE MADE QUITE A NAME&  FOR YOURSELF./
	global.msg[2] = scr_gettext("obj_killerlab_event_115") //\\M3* SUCH INFAMY...^1!&* I'M IMPRESSED./
	global.msg[3] = scr_gettext("obj_killerlab_event_116") //\\M4* OH^1. YES^1.&* IF YOU'RE LOOKING FOR ALPHYS^1,&  SHE'S NOT HERE./
	global.msg[4] = scr_gettext("obj_killerlab_event_117") //\\M0* WHILE YOU WERE BUSY DOING&  YOUR^1, AHEM^1, THING.../
	global.msg[5] = scr_gettext("obj_killerlab_event_118") //* SHE WAS RUNNING AROUND&  EVACUATING PEOPLE TO SAFETY./
	global.msg[6] = scr_gettext("obj_killerlab_event_119") //\\M4* NOW THEY'RE IN A PLACE&  WHERE YOU'LL NEVER GET TO&  THEM./
	global.msg[7] = scr_gettext("obj_killerlab_event_120") //\\M2* DECIDING NOT TO FIGHT YOU^1.&* MY MY^1, SHE REALLY IS THE&  ONLY SMART ONE^1, ISN'T SHE?/%%
	con = 4
	d = instance_create(0, 0, obj_dialoguer)
	d.side = 0
}
if (con == 4 && instance_exists(OBJ_WRITER) == false)
{
	mc = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_maincharar)
	mc.image_speed = 0.25
	mc.hspeed = 2
	obj_mainchara.visible = false
	con = 5
}
if (con == 5)
{
	if (mc.x >= (mc.xstart + 20))
	{
		mc.hspeed = 0
		mc.image_speed = 0
		mc.image_index = 0
		con = 6
		alarm[4] = 45
	}
}
if (con == 7)
{
	global.msg[0] = scr_gettext("obj_killerlab_event_151") //\\M0* OH^1?&* HOW SASSY./
	global.msg[1] = scr_gettext("obj_killerlab_event_152") //\\M4* YOU'RE JUST ITCHING TO GET&  YOUR HANDS ON ME^1, AREN'T&  YOU?/
	global.msg[2] = scr_gettext("obj_killerlab_event_153") //\\M5* WELL..^1. T-O-O B-A-D!/
	global.msg[3] = scr_gettext("obj_killerlab_event_154") //\\M4* THIS WORLD NEEDS STARS MORE&  THAN IT NEEDS CORPSES!/
	global.msg[4] = scr_gettext("obj_killerlab_event_155") //\\M1* TOODLES!/%%
	instance_create(0, 0, obj_dialoguer)
	con = 8
}
if (con == 8 && instance_exists(OBJ_WRITER) == false)
{
	mett.hspeed = 8
	con = 9
	alarm[4] = 15
}
if (con == 10)
{
	view_xview_set(0, (view_xview_get(0) - 2))
	if (view_xview_get(0) <= (nowx + 20))
		con = 11
}
if (con == 11)
{
	obj_mainchara.x = mc.x
	obj_mainchara.visible = true
	obj_mainchara.cutscene = false
	with (mc)
		instance_destroy()
	global.interact = 0
	FL_DisableAlphysCalls = true
	FL_DisableAlphysStatuses = true
	FL_AlphysStatusConvoCounter = 99
	FL_Laser1Off = true
	FL_CompletedShootPuzzle1 = true
	FL_CompletedShootPuzzle2 = true
	FL_CompletedShootPuzzle3 = true
	FL_CompletedShootPuzzle4 = true
	FL_GotAlphysAdvice4 = true
	FL_CompletedShootPuzzleCore = true
	global.plot = 160
	con = 12
	instance_destroy()
}
