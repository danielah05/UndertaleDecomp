/// @func	scr_replace_buttons_pc(text_string)
/// @desc	Replaces pieces of string in text with button label.
/// @arg	{string}	text_string	Text String
function scr_replace_buttons_pc(_text_string)
{
	var str = _text_string
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
