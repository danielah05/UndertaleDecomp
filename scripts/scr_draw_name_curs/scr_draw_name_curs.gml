/// @func	scr_draw_name_curs(name_x, name_y)
/// @desc	Draws name in specific position in cursive.
/// @arg	{real}	name_x	X Position
/// @arg	{real}	name_y	Y Position
function scr_draw_name_curs(_name_x, _name_y)
{
	var xx = _name_x
	var yy = _name_y
	if (global.language == "ja")
	{
	    var use_font = fnt_ja_curs
	    yy += 3
	}
	else
	{
	    use_font = fnt_curs
	    var i = 1
	    while (i < strlen(global.charname))
	    {
	        if (ord(string_char_at(global.charname, i)) >= 12288)
	        {
	            use_font = 12
	            yy += 3
	            break
	        }
	        else
	        {
	            i++
	            continue
	        }
	    }
	}
	draw_set_font(use_font)
	draw_text(xx, yy, string_hash_to_newline(global.charname))
	return string_width(string_hash_to_newline(global.charname));
}
