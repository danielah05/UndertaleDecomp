function scr_drawtext_icons()
{
	var xx = argument[0]
	var yy = argument[1]
	var str = scr_replace_buttons_pc(argument[2])
	var icon_scale = 1
	if (argument_count >= 4)
	    icon_scale = argument[3]
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
