scr_depth(0, 0, 0, 0, 0)
scr_npc_anim()
if (con == 1 && instance_exists(OBJ_WRITER) == false)
{
	global.hp = global.maxhp
	if (global.lv == 1)
		global.hp = 30
	if (global.lv == 2)
		global.hp = 32
	if (global.lv == 3)
		global.hp = 34
	if (global.lv == 4)
		global.hp = 36
	if (global.lv == 5)
		global.hp = 38
	global.interact = 1
	con = 2
	alarm[4] = 30
	instance_create(0, 0, obj_unfader)
	instance_create(0, 0, obj_musfadeout)
}
if (con == 2)
	global.interact = 1
if (con == 3)
{
	caster_free(all)
	global.entrance = 1
	instance_create(0, 0, obj_persistentfader)
	room_goto(room_fire_hotelbed)
}
