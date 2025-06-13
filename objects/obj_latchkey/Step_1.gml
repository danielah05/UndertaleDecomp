scr_depth(0, 0, 0, 0, 0)
if (room == room_kitchen_final && instance_exists(OBJ_WRITER) == false)
{
	if (FL_HaveCastleKey1 == 1)
	{
		global.interact = 0
		instance_destroy()
	}
}
if (room == room_asghouse3 && instance_exists(OBJ_WRITER) == false)
{
	if (FL_HaveCastleKey2 == 1)
	{
		global.interact = 0
		instance_destroy()
	}
}
