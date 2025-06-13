function scr_itemrewrite()
{
	obj_writer_set_halt(3)
	OBJ_INSTAWRITER.halt = 3
	if (global.bmenuno == 3)
		global.msc = 9
	if (global.bmenuno == 3.5)
		global.msc = 10
	instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
}
