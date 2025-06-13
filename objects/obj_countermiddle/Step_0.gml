if (myinteract == 1 && global.interact == 0 && con == 0)
{
	if (instance_exists(obj_mettaton_npc) && global.facing == Direction.Down)
	{
		if (obj_mettaton_npc.sugar == 1 && obj_mettaton_npc.eggs == 1 && obj_mettaton_npc.milk == 1)
			con = 1
	}
	myinteract = 0
}
if (con == 1)
{
	global.interact = 1
	con = 2
	alarm[4] = 30
	snd_play(snd_item)
	newx = (obj_mainchara.x - 15)
	gg = instance_create((newx - 7), 374, obj_npc_marker)
	gg.visible = true
	gg.sprite_index = spr_eggcarton
	gg.depth = 3020
	gg = instance_create((newx - 2), 370, obj_npc_marker)
	gg.visible = true
	gg.sprite_index = spr_mettflour
	gg.depth = 3010
	gg = instance_create((newx + 1), 360, obj_npc_marker)
	gg.visible = true
	gg.sprite_index = spr_milkcarton
	gg.depth = 3000
}
if (con == 3)
{
	obj_mettaton_npc.image_speed = 0.25
	global.typer = 27
	global.msc = 0
	global.facechoice = 0
	global.msg[0] = scr_gettext("obj_countermiddle_116")
	global.msg[1] = scr_gettext("obj_countermiddle_117")
	global.msg[2] = scr_gettext("obj_countermiddle_118")
	global.msg[3] = scr_gettext("obj_countermiddle_119")
	global.msg[4] = scr_gettext("obj_countermiddle_120")
	instance_create(0, 0, obj_dialoguer)
	con = 4
}
if (con == 4 && instance_exists(OBJ_WRITER) == false)
{
	with (obj_cookshowevent)
		caster_stop(bossa)
	obj_cookshowevent.con = 20
	con = 5
}
