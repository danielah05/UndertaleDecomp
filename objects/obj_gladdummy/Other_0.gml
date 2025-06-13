if (outside == 0)
{
	obj_writer_set_halt(3)
	global.monster[myself] = false
	if (global.mnfight == 2)
		global.mnfight = 1
	outside = 1
	instance_destroy()
}
