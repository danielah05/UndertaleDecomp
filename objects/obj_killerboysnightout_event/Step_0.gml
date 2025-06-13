if (con == 1)
{
	caster_pause(global.currentsong)
	bunny.sprite_index = spr_royalguard_rabbit_d
	dragon.sprite_index = spr_royalguard_dragon_d
	con = 0.1
	alarm[4] = 40
}
if (con == 1.1)
{
	global.msc = 0
	global.msg[0] = scr_gettext("obj_killerboysnightout_event_101")
	global.msg[1] = scr_gettext("obj_killerboysnightout_event_102")
	global.msg[2] = scr_gettext("obj_killerboysnightout_event_103")
	scr_regulartext()
	con = 2
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
	global.battlegroup = BattleGroup.RoyalGuards
	global.mercy = 1
	instance_create(0, 0, obj_battler)
	con = 3
	alarm[4] = 33
}
if (con == 4)
{
	global.mercy = 0
	global.interact = 0
	caster_resume(global.currentsong)
	if (FL_KilledLast == true)
		FL_KilledRoyalGuards = true
	con = 17
	global.plot = 164
	with (obj_npc_marker)
		instance_destroy()
	instance_destroy()
}
