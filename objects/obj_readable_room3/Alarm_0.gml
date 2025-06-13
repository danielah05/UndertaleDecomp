myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_readable_room3_59")
if (room == room_asrielroom)
	global.msg[0] = scr_gettext("obj_readable_room3_60")
if (room == room_asrielroom_final)
{
	global.msg[0] = scr_gettext("obj_readable_room3_63")
	if (scr_murderlv() >= MurderLevel.Lv16MettatonKilled)
		global.msg[0] = scr_gettext("obj_readable_room3_66")
}
if (room == room_torielroom)
{
	global.msg[0] = scr_gettext("obj_readable_room3_71")
	if (FL_TruePacifist == true)
	{
		global.msg[0] = scr_gettext("obj_readable_room3_74")
		global.msg[1] = scr_gettext("obj_readable_room3_75")
	}
}
if (room == room_asghouse2)
	global.msg[0] = scr_gettext("obj_readable_room3_79")
if (room == room_asgoreroom)
	global.msg[0] = scr_gettext("obj_readable_room3_81")
if (room == room_torhouse3)
	global.msg[0] = scr_gettext("obj_readable_room3_83")
if (room == room_kitchen)
	global.msg[0] = scr_gettext("obj_readable_room3_84")
if (room == room_kitchen_final)
	global.msg[0] = scr_gettext("obj_readable_room3_85")
if (room == room_tundra_library)
{
	global.msg[0] = scr_gettext("obj_readable_room3_89")
	global.msg[1] = scr_gettext("obj_readable_room3_90")
	global.msg[2] = scr_gettext("obj_readable_room3_91")
	global.msg[3] = scr_gettext("obj_readable_room3_92")
	global.msg[4] = scr_gettext("obj_readable_room3_93")
}
if (room == room_tundra2)
	global.msg[0] = scr_gettext("obj_readable_room3_104")
if (room == room_tundra4)
	global.msg[0] = scr_gettext("obj_readable_room3_108")
if (room == room_tundra8)
	global.msg[0] = scr_gettext("obj_readable_room3_112")
if (room == room_tundra_snowpuzz)
	global.msg[0] = scr_gettext("obj_readable_room3_116")
if (room == room_tundra_xoxopuzz)
	global.msg[0] = scr_gettext("obj_readable_room3_120")
if (room == room_tundra_lesserdog)
	global.msg[0] = scr_gettext("obj_readable_room3_124")
if (room == room_tundra_dangerbridge)
	global.msg[0] = scr_gettext("obj_readable_room3_128")
if (room == room_tundra_town)
	global.msg[0] = scr_gettext("obj_readable_room3_132")
if (room == room_water_bridgepuzz1)
	global.msg[0] = scr_gettext("obj_readable_room3_139")
if (room == room_water5)
	global.msg[0] = scr_gettext("obj_readable_room3_141")
if (room == room_water6)
	global.msg[0] = scr_gettext("obj_readable_room3_142")
if (room == room_water7)
{
	global.msg[0] = scr_gettext("obj_readable_room3_147")
	global.msg[1] = scr_gettext("obj_readable_room3_148")
}
if (room == room_water14)
{
	global.msg[0] = scr_gettext("obj_readable_room3_154")
	global.msg[1] = scr_gettext("obj_readable_room3_155")
	global.msg[2] = scr_gettext("obj_readable_room3_156")
	global.msg[3] = scr_gettext("obj_readable_room3_157")
	global.msg[4] = scr_gettext("obj_readable_room3_158")
	global.msg[5] = scr_gettext("obj_readable_room3_159")
}
if (room == room_water15)
{
	global.msg[0] = scr_gettext("obj_readable_room3_165")
	global.msg[1] = scr_gettext("obj_readable_room3_166")
	global.msg[2] = scr_gettext("obj_readable_room3_167")
}
if (room == room_tundra_sanshouse)
{
	if instance_exists(obj_papyrusparent)
	{
		scr_papface(0, 0)
		global.msg[1] = scr_gettext("obj_readable_room3_175")
		global.msg[2] = scr_gettext("obj_readable_room3_176")
	}
	else
		global.msg[0] = scr_gettext("obj_readable_room3_180")
}
if (room == room_tundra_paproom)
	global.msc = 561
if (room == room_water_prebird)
	global.msg[0] = scr_gettext("obj_readable_room3_195")
if (room == room_fire_lab1)
{
	global.msg[0] = scr_gettext("obj_readable_room3_200")
	global.msg[1] = scr_gettext("obj_readable_room3_201")
	if (global.plot < 126 && scr_murderlv() < MurderLevel.Lv12UndyneEXKilled)
		global.msg[0] = scr_gettext("obj_readable_room3_202")
}
if (room == room_fire_lab2)
{
	global.msg[0] = scr_gettext("obj_readable_room3_207")
	global.msg[1] = scr_gettext("obj_readable_room3_208")
}
if (room == room_fire_cookingshow)
{
	global.msg[0] = scr_gettext("obj_readable_room3_213")
	if (global.plot < 134)
		global.msg[0] = scr_gettext("obj_readable_room3_215")
	if instance_exists(obj_mettaton_npc)
	{
		global.typer = 27
		global.msg[0] = scr_gettext("obj_readable_room3_222")
		global.msg[1] = scr_gettext("obj_readable_room3_223")
		if (global.plot == 134)
		{
			global.msg[0] = scr_gettext("obj_readable_room3_228")
			global.msg[1] = scr_gettext("obj_readable_room3_229")
		}
	}
}
if (room == room_water_undynehouse)
{
	global.typer = 37
	global.facechoice = 5
	global.faceemotion = 0
	global.msc = 0
	global.msg[0] = scr_gettext("obj_readable_room3_242")
	global.msg[1] = scr_gettext("obj_readable_room3_243")
	global.msg[2] = scr_gettext("obj_readable_room3_244")
	global.msg[3] = scr_gettext("obj_readable_room3_245")
	global.msg[4] = scr_gettext("obj_readable_room3_246")
	if (talkedto > 0)
		global.msg[0] = scr_gettext("obj_readable_room3_248")
}
if (room == room_truelab_hall1)
{
	global.msg[0] = scr_gettext("obj_readable_room3_254")
	global.msg[1] = scr_gettext("obj_readable_room3_255")
	global.msg[2] = scr_gettext("obj_readable_room3_256")
	global.msg[3] = scr_gettext("obj_readable_room3_257")
	global.msg[4] = scr_gettext("obj_readable_room3_258")
	global.msg[5] = scr_gettext("obj_readable_room3_259")
	if (FL_PowerSwitchAmalgamEvent == 1)
		global.msg[0] = scr_gettext("obj_readable_room3_261")
}
if (room == room_truelab_tv)
	global.msg[0] = scr_gettext("obj_readable_room3_266")
if (room == room_truelab_cooler)
{
	global.msg[0] = scr_gettext("obj_readable_room3_272")
	global.msg[1] = scr_gettext("obj_readable_room3_273")
	global.msg[2] = scr_gettext("obj_readable_room3_274")
	if (FL_PowerSwitchAmalgamEvent == 1)
		global.msg[0] = scr_gettext("obj_readable_room3_275")
	if (FL_EndogenyEvent == 0)
		global.msg[0] = scr_gettext("obj_readable_room3_276")
}
if (room == room_truelab_hub)
	global.msc = 829
if (room == room_tundra_sansroom)
	global.msg[0] = scr_gettext("obj_readable_room3_286")
if (room == room_tundra_sansbasement)
{
	global.msg[0] = scr_gettext("obj_readable_room3_291")
	global.msg[1] = scr_gettext("obj_readable_room3_292")
	global.msg[2] = scr_gettext("obj_readable_room3_293")
}
if (room == room_water_blookhouse)
{
	if instance_exists(obj_napstablook_actor)
	{
		global.msg[0] = scr_gettext("obj_readable_room3_303")
		global.msg[1] = scr_gettext("obj_readable_room3_304")
	}
	else
	{
		global.msg[0] = scr_gettext("obj_readable_room3_308")
		global.msg[1] = scr_gettext("obj_readable_room3_309")
	}
}
if (room == room_ice_dog)
	global.msg[0] = scr_gettext("obj_readable_room3_315")
if (room == room_fire_restaurant)
	global.msg[0] = scr_gettext("obj_readable_room3_320")
if (room == room_water_temvillage)
	global.msg[0] = scr_gettext("obj_readable_room3_325")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
