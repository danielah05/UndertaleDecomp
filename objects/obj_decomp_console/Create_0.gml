active = false;
insert_mode = false;
carat_visible = true;
carat_xoffset = 0;

alarm[0] = 15;
input_text = "";

history = array_create(0);
commands = array_create(0);

// 0 = most recent, len - 1 = least recent
commands_history = array_create(0);
commands_history_index = -1;
commands_textbox = "";

scroll_offset = 0;
scroll_input_counter = 0;

command_name = "";
prev_dir_x = 0;
prev_dir_y = 0;
mouse_click_x = 0;
mouse_click_y = 0;

show_collision = false;
show_position = false;
show_triggers = false;
previous_room = noone;

random_encounters = true;

#macro COMMAND_CONSOLE_HISTORY_MAX 64
#macro SCROLL_MIN_ENTRIES_SHOWN 6
#macro POPUP_MAX_ELEMENTS 10

function activate() 
{
	trace("Activating Console");
	active = true;
	reset_input();
}

function deactivate() 
{
	trace("Deactivating Console");
	active = false;
	reset_input();
}


function reset_input()
{
	keyboard_string = "";
	input_text = "";
	command_name = "";
	scroll_offset = 0;
	commands_history_index = -1;
	commands_textbox = "";
}

function command_push_history()
{
	array_insert(commands_history, 0, input_text);
	if (array_length(commands_history) > COMMAND_CONSOLE_HISTORY_MAX)
		array_pop(commands_history);
}
event_user(0);