function scr_drawtext_icons_multiline()
{
	var x0 = argument[0]
	var y0 = argument[1]
	var str = scr_replace_buttons_pc(argument[2])
	var icon_scale = 1
	if (argument_count >= 4)
		icon_scale = argument[3]
	var len = strlen(str)
	var line_height = string_height(string_hash_to_newline(" "))
	var outstr = ""
	var xx = argument[0]
	var yy = argument[1]
	for (var i = 1; i < len; i++)
	{
		if (substr(str, i, 1) == "#")
		{
			if (outstr != "")
			{
				draw_text(xx, yy, string_hash_to_newline(outstr))
				outstr = ""
			}
			xx = x0
			yy += line_height
		}
		else if (substr(str, i, 2) == "\\*")
		{
			if (outstr != "")
			{
				draw_text(xx, yy, string_hash_to_newline(outstr))
				xx += round(string_width(string_hash_to_newline(outstr)))
				outstr = ""
			}
			i += 2
			var sprite = scr_getbuttonsprite(substr(str, i, 1), 0)
			if (sprite != noone)
			{
				draw_sprite_ext(sprite, 0, xx, yy, icon_scale, icon_scale, 0, c_white, 1)
				xx += ((sprite_get_width(sprite) + 1) * icon_scale)
			}
		}
		else
			outstr += substr(str, i, 1)
	}
	if (outstr != "")
		draw_text(xx, yy, string_hash_to_newline(outstr))
}
