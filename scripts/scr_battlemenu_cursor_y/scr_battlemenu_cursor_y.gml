function scr_battlemenu_cursor_y()
{
	var line = argument0
	if (global.language == "ja")
	    return ((global.idealborder[2] + 27) + (line * 36));
	else
	    return ((global.idealborder[2] + 28) + (line * 32));
}
