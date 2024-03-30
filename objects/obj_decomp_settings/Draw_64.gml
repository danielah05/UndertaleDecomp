var saved_draw_state = new draw_state();

var viewp_x = view_get_xport(view_current);
var viewp_y = view_get_yport(view_current);
var viewp_w = view_get_wport(view_current);
var viewp_h = view_get_hport(view_current);
var viewp_right = viewp_x + viewp_w;
var viewp_bottom = viewp_y + viewp_h;

draw_set_valign(fa_top);

#region Draw Header
draw_set_font(fnt_main);
draw_set_color(c_white);
draw_set_alpha(1.0);

draw_set_halign(fa_center);
draw_text_transformed(display_get_gui_width() / 2, 0, "DECOMP SETTINGS", 2, 2, 0);
draw_set_halign(fa_left);


if (hover_category == -1)
	draw_set_color(c_yellow);
else
	draw_set_color(c_white);

draw_text(8, 62, "Exit");

#endregion

#region Draw Categories

var str_height = string_height("Exit");
var category_start_y = str_height + 68;

var category_curr_x_offset = 0;

for (var i = 0; i < array_length(categories); i++)
{
	var color = (selected_category == i || hover_category == i) ? c_yellow : c_white;

	var str_width = string_width(categories[i].displayName);
	var box_x = category_curr_x_offset;
	var box_y = category_start_y;
	var box_w = str_width + (menu_pad * 4) - 1;
	var box_h = str_height + (menu_pad * 4) - 1;
	
	draw_set_color(color);

	ossafe_fill_rectangle(box_x, box_y, box_x + box_w, box_y + box_h);
	draw_set_color(c_black);
	ossafe_fill_rectangle(box_x + menu_pad, box_y + menu_pad, (box_x + box_w) - menu_pad, (box_y + box_h) - menu_pad);
	
	draw_set_color(color);
	draw_text(box_x + menu_pad * 2, box_y + menu_pad * 2, categories[i].displayName);
	
	category_curr_x_offset += (box_w + 1);
}

#endregion

#region Draw Category Contents

var cat_box_x = 0;
var cat_box_y = category_start_y + (menu_pad * 4) + str_height;
var cat_box_w = display_get_gui_width() - cat_box_x;
var cat_box_h = display_get_gui_height() - cat_box_y;

draw_set_color(c_white);
ossafe_fill_rectangle(cat_box_x, cat_box_y, cat_box_x + cat_box_w, cat_box_y + cat_box_h);
draw_set_color(c_black);
ossafe_fill_rectangle(cat_box_x + menu_pad, cat_box_y + menu_pad, cat_box_x + (cat_box_w - menu_pad) - 1, cat_box_y + (cat_box_h - menu_pad) - 1);
draw_set_color(c_white);

if (hover_category == -1)
{
	var __x = cat_box_x + (menu_pad * 2);
	var __y = (cat_box_y + (menu_pad * 2)) + (i * str_height);
	var daniela_quote = "";
	
	if (season != 0)
	{
		switch (season)
		{
			case 1:
				daniela_quote = daniela_winter_quote;
				break;
			case 2:
				daniela_quote = daniela_spring_quote;
				break;
			case 3:
				daniela_quote = daniela_summer_quote;
				break;
			case 4:
				daniela_quote = daniela_fall_quote;
				break;
		}
		draw_text(__x, __y, $"Daniela Says:\n{daniela_quote}");
	}
	
	with (obj_settings_daniela)
	{
		draw_self();
	}
}
else
{
	var cat = categories[hover_category];
	
	var cat_bounds = array_create(4);
	cat_bounds[0] = cat_box_x;
	cat_bounds[1] = cat_box_y;
	cat_bounds[2] = cat_box_w;
	cat_bounds[3] = cat_box_h;
	
	for (var i = 0; i < array_length(cat.options); i++)
	{
		draw_set_color(c_white);
		var color = (hover_option == i) ? c_yellow : c_white;
			
		var option = cat.options[i];
		
		var __x = cat_box_x + (menu_pad * 2);
		var __y = (cat_box_y + (menu_pad * 2)) + (i * str_height);
		
		switch (option.type)
		{
			case MenuOptionTypes.CheckBox:
				draw_checkbox(__x, __y, option, cat_bounds, color);
				break;
			case MenuOptionTypes.Slider:
				draw_slider(__x, __y, option, cat_bounds, color);
				break;
			case MenuOptionTypes.HoldButton:
				draw_hold_timer(__x, __y, option, cat_bounds, color);
				break;
		}
	}
}

#endregion

#region Draw Footer

#endregion

draw_load_state(saved_draw_state)
delete saved_draw_state;