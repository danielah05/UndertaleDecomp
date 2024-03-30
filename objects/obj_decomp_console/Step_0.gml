var dir_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var dir_y = keyboard_check(vk_up) - keyboard_check(vk_down);

if (!global.decomp_vars.DevConsoleEnabled)
{
	active = false;
	return;
}

if (keyboard_check_pressed(vk_tab))
{
	if (active)
		deactivate();
	else
		activate();
}

// Reapply trigger show command if a room switch occurred
// Otherwise some triggers stop showing
if (previous_room != room)
{
	// Only touch the triggers if we actually want to show them
	// Some triggers don't seem to work too well if you make them visible / invisible forcefully
	// That way we don't break regular gameplay
	if (instance_exists(obj_decomp_console) && obj_decomp_console.show_triggers)
		apply_trigger_show();
}
previous_room = room;

if (!active)
	return;
	
if (prev_dir_y != dir_y && dir_y != 0)
{
	trace($"aa:{array_length(commands_history)} i : {commands_history_index}");
	
	if (array_length(commands_history) > 0)
	{
		if (dir_y == 1 && commands_history_index + 1 < array_length(commands_history))
		{
			if (commands_history_index == -1)
			{
				commands_textbox = keyboard_string;
			}
			
			keyboard_string = commands_history[++commands_history_index];
		}
		else if (dir_y == -1)
		{
			if (commands_history_index > 0)
			{
				keyboard_string = commands_history[--commands_history_index];	
			}
			else
			{
				commands_history_index = -1;
				keyboard_string = commands_textbox;
			}
		}
	}
}

if (dir_x != 0)
{
	if (prev_dir_x != dir_x)
	{
		scroll_input_counter = 0;
	}
	else
	{
		scroll_input_counter += dir_x;
	}
	
	var should_scroll = (scroll_input_counter == 0 || (abs(scroll_input_counter) >= 15 && scroll_input_counter % 4 == 0));
	
	if (should_scroll)
	{	
		if (dir_x == 1)
		{
			scroll_offset = min(scroll_offset + 1, max(array_length(history) - SCROLL_MIN_ENTRIES_SHOWN, 0));
		}
		else if (dir_x == -1)
		{
			scroll_offset = max(scroll_offset - 1, 0);
		}
	}
}
else
{
	scroll_input_counter = 0;
}

input_text = keyboard_string;

if (string_ends_with(input_text, "\n"))
	input_text = substr(input_text, 0, strlen(input_text) - 2);
	
command_name = "";

// Parse input
var temp = string_split(input_text, " ", true);
if (array_length(temp) > 0)
	command_name = temp[0];

var valid_command_name = validCommandName(command_name);

if (keyboard_check_pressed(vk_enter))
{
	if (valid_command_name)
	{
		var index = getCommandDefIndex(command_name);
		var arg_count = array_length(temp) - 1;
		var arg_array = array_create(arg_count > 0 ? arg_count : 0);
		
		if (arg_count > 0)
		{
			arg_array = array_create(array_length(temp) - 1);		
			array_copy(arg_array, 0, temp, 1, arg_count);
		}
		commands_history_index = -1;
		commands_textbox = "";
		var commandDef = commands[getCommandDefIndex(command_name)];
		command_writeline(input_text);
		trace($"Attempting to execute command: \"{commandDef.displayName}\" with arguments: \"{arg_array}\"");

		script_execute(asset_get_index(commandDef.functionRef), arg_array);
	}
	else
		command_writeline($"Unknown Command: \"{command_name}\"");
	
	command_push_history();
	reset_input();
}
prev_dir_x = dir_x;
prev_dir_y = dir_y;