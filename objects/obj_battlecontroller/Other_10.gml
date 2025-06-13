if (won == 1)
{
	if (instance_exists(OBJ_WRITER) == false)
		room_goto(global.currentroom)
}
if (won == 1)
{
	if (instance_exists(OBJ_WRITER) == true)
	{
		if (OBJ_WRITER.halt != 0)
			room_goto(global.currentroom)
	}
}
