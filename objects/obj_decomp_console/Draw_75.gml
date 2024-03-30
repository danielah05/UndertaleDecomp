
var saved_draw_state = new draw_state();

draw_set_font(fnt_maintext);
var char_height = string_height(" ");
var char_width = string_width(" ");

#region Plot Variable

if (global.monitorPlotVariable)
{
	var plot_example = "Plot: 999";
	var plot_width = string_width(plot_example);
	var plot_height = string_height(plot_example);
	
	var plot_x = (view_get_xport(0) + view_get_wport(0)) - plot_width;
	var plot_y = (view_get_yport(0) + view_get_hport(0)) - plot_height;
	
	draw_set_color(c_black);
	ossafe_fill_rectangle(plot_x, plot_y, plot_x + plot_width, plot_y + plot_height);
	draw_set_color(c_white);
	draw_text(plot_x, plot_y, $"Plot: {global.plot}");
}
#endregion

#region Plot Flags

for (var i = 0; i < array_length(global.monitorFlags); i++)
{
	var plot_example = "Flag 123: 1";
	var flag = global.monitorFlags[i];
	var value = global.flag[flag];
	
	var plot_width = string_width(plot_example);
	var plot_height = string_height(plot_example);
	
	var plot_x = (view_get_xport(0) + view_get_wport(0)) - plot_width;
	var plot_y = (view_get_yport(0) + view_get_hport(0)) - (i + 2) * plot_height;
	
	draw_set_color(c_black);
	ossafe_fill_rectangle(plot_x, plot_y, plot_x + plot_width, plot_y + plot_height);
	draw_set_color(c_white);
	draw_text(plot_x, plot_y, $"Flag {flag}:{value}");
}

#endregion

#region Position

if (show_position && instance_exists(obj_mainchara))
{
	var pos = $"X,Y: ({obj_mainchara.x}, {obj_mainchara.y})";
	var pos_width = string_width(pos);
	var pos_height = string_height(pos);

	var pos_x = view_get_xport(0);
	var pos_y = view_get_yport(0) + (active * (char_height * 7) + 6);

	draw_set_color(c_black);
	ossafe_fill_rectangle(pos_x, pos_y, pos_x + pos_width, pos_y + pos_height);
	draw_set_color(c_white);
	draw_text(pos_x, pos_y, pos);
}
#endregion

if (!active)
{
	draw_load_state(saved_draw_state);
	delete saved_draw_state;
	return;
}


var bounds_rect = {
	x : view_get_xport(0),
	y : view_get_yport(0),
	w : view_get_wport(0),
	h : (char_height * 7) + 6,
	
	right : view_get_xport(0) + view_get_wport(0),
	bottom : view_get_yport(0) + (char_height * 7) + 6
}

// Vultu: Draw the box
draw_set_color(c_black);
draw_set_alpha(1.0);
ossafe_fill_rectangle(bounds_rect.x, bounds_rect.y, bounds_rect.right, bounds_rect.bottom);
draw_set_color(c_white);
draw_set_alpha(1.0);


#region Input

var input_text_x = bounds_rect.x + char_width + 10;
var input_text_y = (bounds_rect.bottom - char_height) - 2;
var input_box_y = (bounds_rect.bottom - char_height) - 4;


#region Outline
ossafe_fill_rectangle(bounds_rect.x, input_box_y, bounds_rect.right, bounds_rect.bottom);
draw_set_color(c_black);
draw_set_alpha(1.0);
ossafe_fill_rectangle(bounds_rect.x + 3, input_box_y + 3, bounds_rect.right - 4, bounds_rect.bottom - 3);
draw_set_color(c_white);
draw_set_alpha(1.0);
#endregion

#region History

var text_height = string_height("A");

var history_len = array_length(history);
var history_max_pixel_height = (COMMAND_CONSOLE_HISTORY_MAX * text_height) - input_box_y
var history_pixel_height = history_len * text_height;

for (var i = scroll_offset; i < history_len; i++)
{
	draw_text(bounds_rect.x + 2, input_box_y - ((i - scroll_offset + 1) * char_height), history[i]);
}

if (history_pixel_height > input_box_y)
{
	var scroll_x = bounds_rect.right - 9;
	var scroll_y = bounds_rect.y + 3;
	
	var scroll_width = 5;
	var scroll_height = (input_box_y - 4) - scroll_y;

	draw_set_color(c_gray);
	ossafe_fill_rectangle(scroll_x, scroll_y, scroll_x + scroll_width, scroll_y + scroll_height);
	
	draw_set_color(c_white);
	
	var normalized_history_height = scroll_height / history_max_pixel_height;
	
	var scrollbar_progress = 1 - clamp(scroll_offset / (history_len - SCROLL_MIN_ENTRIES_SHOWN), 0, 1);
	var scrollbar_ratio = SCROLL_MIN_ENTRIES_SHOWN / history_len;
	var scrollbar_height = scroll_height * scrollbar_ratio;

	var scrollbar_x = scroll_x;
	var scrollbar_y = scroll_y + (scroll_height - scrollbar_height) * scrollbar_progress;
	var scrollbar_right = scrollbar_x + scroll_width;
	var scrollbar_bottom = scrollbar_y + scrollbar_height;
	
	//if (point_in_rectangle(mouse_x - view_get_xport(0), mouse_y - view_get_yport(0), scrollbar_x, scrollbar_y, scrollbar_right, scrollbar_bottom))
	//	draw_set_color(c_yellow);
	
	ossafe_fill_rectangle(scrollbar_x, scrollbar_y, scrollbar_right, scrollbar_bottom);
	
}
draw_set_color(c_white);
#endregion

#region Input
draw_text_transformed(input_text_x - char_width - 6, input_text_y, "*", 1.0, 1.0, 0);

//var text_to_draw = string_replace(input_text, " ", "  ");


carat_xoffset = string_width(input_text) * 1;

// Vultu: Draw the carat
if (carat_visible)
	draw_rectangle(input_text_x + carat_xoffset, input_text_y, input_text_x + carat_xoffset, bounds_rect.bottom, false);

draw_text_transformed(input_text_x, input_text_y, input_text, 1.0, 1.0, 0);

var valid_command_name = false;
var cmd_and_args = string_split(input_text, " ", true);

if (command_name != "")
{
	//trace($"POS: {string_pos(command_name, input_text)}")
	valid_command_name = validCommandName(command_name);
	if (valid_command_name)
		draw_set_color(c_lime);
	else
		draw_set_color(c_red);
		
	draw_text(input_text_x + ((string_pos(command_name, input_text) - 1) * char_width), input_text_y, command_name);
	
	// Hints
	
	var hint_offset = string_width(input_text);
	
	// Draw inline argument name hints
	var arguments = getCommandArguments(command_name);
	var argument_index = array_length(cmd_and_args) - 1;
	
	if (argument_index < array_length(arguments) && !string_ends_with(input_text, " "))
	{
		// Add some space
		hint_offset += string_width(" ");
	}
	
	draw_set_color(c_gray);
	for (var i = argument_index; i < array_length(arguments); i++)
	{
		draw_text(input_text_x + hint_offset, input_text_y, arguments[i]);
		hint_offset += string_width(arguments[i]) + string_width(" ");
	}
	
	// Draw inline help text
	var help_text = getCommandHelpText(command_name);
	
	if (help_text != "")
	{
		hint_offset += 3 * string_width(" ");
		draw_set_color(c_gray);
		draw_text(input_text_x + hint_offset, input_text_y, help_text);
		hint_offset += string_width(help_text) + string_width(" ");
	}
	
	draw_set_color(c_white);
}

#endregion

#region Popout

var popout_elements = array_create(0);

// Check if we can show command popups
if (array_length(cmd_and_args) == 1 && !string_ends_with(input_text, " "))
{
	for (var i = 0; i < array_length(commands) && array_length(popout_elements) <= POPUP_MAX_ELEMENTS; i++)
	{
		if (string_starts_with(commands[i].displayName, command_name))
		{
			array_push(popout_elements, commands[i].displayName);
		}
	}
}

// Check if we can show argument popups
if (valid_command_name)
{
	var arg_value = cmd_and_args[array_length(cmd_and_args) - 1];
	var argument_index = array_length(cmd_and_args) - 2;
	
	if (string_ends_with(input_text, " "))
	{
		// Look at the upcoming argument instead
		arg_value = "";
		argument_index += 1;
	}
	
	var command = getCommandDefIndex(command_name);
	
	if (0 <= argument_index && argument_index < array_length(commands[command].argumentHints))
	{
		for (var i = 0; i < array_length(commands[command].argumentHints[argument_index]) && array_length(popout_elements) <= POPUP_MAX_ELEMENTS; i++)
		{
			if (string_starts_with(commands[command].argumentHints[argument_index][i], arg_value))
			{
				array_push(popout_elements, commands[command].argumentHints[argument_index][i]);
			}
		}
	}
}

// Show popup elements if any
if (array_length(popout_elements) > 0)
{
	var rect_width = 0;
	var rect_height = 0;
	
	for (var i = 0; i < array_length(popout_elements); i++)
	{
		rect_width = max(rect_width, string_width(popout_elements[i]));
		rect_height += char_height;
	}
	
	var popout_border = 2;
	var popout_pad = 2;
		
	var popout_x = bounds_rect.x + popout_border;
	var popout_y = bounds_rect.bottom + char_height + popout_border;
	var popout_width = popout_x + rect_width + 2 * popout_pad;
	var popout_height = popout_y + rect_height + 2 * popout_pad;

	var border_x = popout_x - popout_border - popout_pad;
	var border_y = popout_y - popout_border - popout_pad;
	var border_right = popout_x + rect_width + popout_border + 2 * popout_pad;
	var border_bottom = popout_y + rect_height + popout_border + 2 * popout_pad;
	
	draw_set_color(c_white);
	ossafe_fill_rectangle(border_x, border_y, border_right, border_bottom);
	draw_set_color(c_black);
	ossafe_fill_rectangle(popout_x, popout_y, popout_width, popout_height);
	draw_set_color(c_white);
	
	for (var i = 0; i < array_length(popout_elements); i++)
	{
		draw_text(popout_x + popout_pad, popout_y + popout_pad + (i * char_height), popout_elements[i]);
	}
}

#endregion

#region Room name

var room_name = room_get_name(room);
var name_width = string_width(room_name);
var name_height = string_height(room_name);

var name_x = view_get_xport(0);
var name_y = (view_get_yport(0) + view_get_hport(0)) - name_height;

draw_set_color(c_black);
ossafe_fill_rectangle(name_x, name_y, name_x + name_width, name_y + name_height);
draw_set_color(c_white);
draw_text(name_x, name_y, room_name);

#endregion
draw_load_state(saved_draw_state);

delete saved_draw_state;
delete bounds_rect;