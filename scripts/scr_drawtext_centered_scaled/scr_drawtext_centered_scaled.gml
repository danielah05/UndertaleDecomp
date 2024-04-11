/// @func	scr_drawtext_centered_scaled(x, y, text, xscale, yscale)
/// @desc	Draws centered text at specific position with specific scale.
/// @arg	{real}		x			X Position
/// @arg	{real}		y			Y Position
/// @arg	{string}	text		Text String
/// @arg	{real}		xscale		X Scale
/// @arg	{real}		yscale		Y Scale
function scr_drawtext_centered_scaled(_x, _y, _text, _xscale, _yscale)
{
	var xx = _x
	var yy = _y
	var text = _text
	var xscale = _xscale
	var yscale = _yscale
	var display_scale = (surface_get_width(application_surface) / view_wview_get(view_current))
	var lineheight = round((string_height(string_hash_to_newline(" ")) * yscale))
	var eol = string_pos("#", text)
	yy = (round((yy * display_scale)) / display_scale)
	while (eol != 0)
	{
	    var line = substr(text, 1, eol)
	    text = substr(text, (eol + 1))
	    var width = (string_width(string_hash_to_newline(line)) * xscale)
	    var line_x = (round(((xx - (width / 2)) * display_scale)) / display_scale)
	    draw_text_transformed(line_x, yy, string_hash_to_newline(line), xscale, yscale, 0)
	    yy += lineheight
	    eol = string_pos("#", text)
	}
	width = (string_width(string_hash_to_newline(text)) * xscale)
	draw_text_transformed(round((xx - (width / 2))), yy, string_hash_to_newline(text), xscale, yscale, 0)
}
