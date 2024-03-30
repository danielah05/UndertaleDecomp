function scr_replace_buttons_pc()
{
	var str = argument0
	if (global.osflavor <= OSFlavors.Mac)
	{
	    str = string_replace_all(str, "\\*Z", "[Z]")
	    str = string_replace_all(str, "\\*X", "[X]")
	    str = string_replace_all(str, "\\*C", "[C]")
	    str = string_replace_all(str, "\\*A", scr_gettext("key_left"))
	    str = string_replace_all(str, "\\*D", scr_gettext("key_right"))
	}
	return str;
}
