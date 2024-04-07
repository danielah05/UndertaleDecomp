/// @func					scr_setfont(font)
/// @desc					Sets the current font based on the language
/// @param	{Asset.GMFont}	font
function scr_setfont(_font)
{
	var newfont = _font
	if (global.language == "ja")
	{
	    if (newfont == fnt_main)
	        newfont = fnt_ja_main
	    if (newfont == fnt_maintext)
	        newfont = fnt_ja_maintext
	    if (newfont == fnt_plain)
	        newfont = fnt_ja_plain
	}
	draw_set_font(newfont)
}
