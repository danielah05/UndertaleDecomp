/// @func	scr_drawtext_icons(x, y, text_string, icon_scale)
/// @desc	Draws icon in specified text string with adjustable size.
/// @arg	{real}		x			X Position
/// @arg	{real}		y			Y Position
/// @arg	{string}	text_string	Text String
/// @arg	{real}		icon_scale	Icon scale
function scr_drawtext_icons(_x, _y, _text_string, _icon_scale)
{
	var xx = _x
	var yy = _y
	var str = scr_replace_buttons_pc(_text_string)
	var icon_scale = 1
	if (argument_count >= 4)
	    icon_scale = _icon_scale
	for (var i = string_pos("\\*", str); i != 0; i = string_pos("\\*", str))
	{
	    if (i > 1)
	    {
	        var s = substr(str, 1, (i - 1))
	        draw_text(xx, yy, string_hash_to_newline(s))
	        xx += round(string_width(string_hash_to_newline(s)))
	    }
	    var ch = string_char_at(str, (i + 2))
	    var sprite = scr_getbuttonsprite(ch, 0)
	    if (sprite != noone)
	    {
	        draw_sprite_ext(sprite, 0, xx, yy, icon_scale, icon_scale, 0, c_white, 1)
	        xx += ((sprite_get_width(sprite) + 1) * icon_scale)
	    }
	    str = substr(str, (i + 3))
	}
	if (string_length(str) > 0)
	    draw_text(xx, yy, string_hash_to_newline(str))
}
