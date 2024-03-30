function cmd_clear(_args)
{
	obj_decomp_console.history = array_create(0);
	scroll_offset = 0;
}