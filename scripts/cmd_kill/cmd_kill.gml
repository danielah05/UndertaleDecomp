function cmd_kill()
{
	caster_stop(all);
	global.hp = 0;
	room_goto(room_battle);
}