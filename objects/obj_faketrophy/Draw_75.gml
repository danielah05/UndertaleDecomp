if (fader == 0)
{
	instance_destroy();
	return;
}

if (do_fade)
	fader--;
var saved_draw_state = new draw_state();


draw_set_font(fnt_main);
var title_width = string_width(title);
var title_height = string_height(title);

draw_set_font(fnt_maintext);
var text_width = string_width(text);
var text_height = string_height(text);

var icon_width = sprite_get_width(trophy_icon);
var icon_height = sprite_get_height(trophy_icon);

var max_text_width = max(title_width, text_width);


var stretched_icon_size = text_height + padding + title_height;

var trophy_width = (padding * 3) + stretched_icon_size + padding + max_text_width + (padding * 3);
var trophy_height = (padding * 3) + stretched_icon_size + (padding * 3);

draw_set_alpha(fader / 100);
draw_set_color(c_white);
ossafe_fill_rectangle(x, y, x + trophy_width, y + trophy_height);
draw_set_color(c_black);
ossafe_fill_rectangle(x + padding, y + padding, x + trophy_width - (padding * 2) + 2, y + trophy_height - (padding * 2) + 2);

draw_set_color(c_white);
draw_sprite_stretched(trophy_icon, trophy_icon_index, x + (padding * 2), y + (padding * 2), stretched_icon_size, stretched_icon_size);

draw_set_font(fnt_main);
draw_text(x + (padding * 4) + stretched_icon_size, y + (padding * 2), title);
draw_set_font(fnt_maintext);
draw_text((x + (padding * 4) + stretched_icon_size), (y + trophy_height - (padding * 3)) - (text_height), text);

draw_load_state(saved_draw_state);
delete saved_draw_state;