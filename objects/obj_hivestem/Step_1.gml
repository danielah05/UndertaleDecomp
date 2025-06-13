scr_depth(0, 0, 0, 0, 0)
if (con < 3)
	scr_npc_anim()
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 1
	con = 3
	caster_pause(global.currentsong)
	alarm[4] = 45
}
if (con == 3)
	global.interact = 1
if (con == 4)
{
	snd_play(snd_movemenu)
	sprite_index = spr_temmie_hive
	image_index = 1
	con = 5
	alarm[4] = 30
}
if (con == 6)
{
	snd_play(snd_movemenu)
	sprite_index = spr_temmie_hive
	image_index = 2
	con = 7
	alarm[4] = 30
}
if (con == 8)
{
	snd_play(snd_movemenu)
	sprite_index = spr_temmie_hive
	image_index = 3
	con = 9
	alarm[4] = 30
}
if (con == 10)
{
	snd_play(snd_movemenu)
	sprite_index = spr_temmie_hivetalk
	image_index = 0
	con = 11
	alarm[4] = 45
}
if (con == 12)
{
	FL_TalkedToAllergyTem = 1
	con = -1
	global.interact = 0
	caster_resume(global.currentsong)
}
