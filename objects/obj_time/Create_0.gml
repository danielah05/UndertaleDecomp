/* if (os_type == os_windows)
	global.osflavor = 1 
else if (os_type == os_ps4 || os_type == os_psvita)
	global.osflavor = 4
else if (os_type == os_switch)
	global.osflavor = 5
else
	global.osflavor = 2
*/
if (os_type == os_windows || os_type == os_linux || os_type == os_macosx)
	global.osflavor = OSFlavors.PC
else if (os_type == os_ps4 || os_type == os_psvita)
	global.osflavor = OSFlavors.Playstation
else if (os_type == os_switch)
	global.osflavor = OSFlavors.Switch
else if (os_type == os_xboxone)
{
	global.osflavor = OSFlavors.XboxOne
	xbox_account_picker_display = 0
	xbox_switch_profile = 0
	xbox_new_user = 0
	xbox_connect_buffer = 5
	global.xbox_async_id = -1
	global.xbox_trophy_queue = ds_queue_create()
	xbox_can_unlock_trophy = 1
	xbox_suspend = 0
	xbox_controller_connected = 1
	xbox_login_pad_index = -1
}
else
	global.osflavor = OSFlavors.Mac

global.locale = ((os_get_language() + "_") + string_upper(os_get_region()))
if (global.osflavor >= OSFlavors.Console)
{
	application_surface_enable(true)
	application_surface_draw_enable(false)
}
if (os_type == os_switch && (!variable_global_exists("switchlogin")))
{
	global.switchlogin = -1
	while (global.switchlogin < 0)
		global.switchlogin = switch_accounts_select_account(1, 0, 0)
}
if (os_type == os_switch)
{
	switch_controller_support_set_defaults()
	switch_controller_support_set_singleplayer_only(true)
	switch_controller_set_supported_styles(7)
	missing_controller_timeout = 0
}
global.savedata_async_id = -1
global.savedata_async_load = 0
global.savedata_error = 0
global.savedata_debuginfo = ""
global.disable_os_pause = 0
paused = false
pausing = false
screenshot = -1
idle = 0
idle_time = 0
up = 0
down = 0
left = 0
right = 0
quit = 0
try_up = 0
try_down = 0
try_left = 0
try_right = 0
canquit = true
h_skip = 0
j_xpos = 0
j_ypos = 0
j_dir = 0
j_fr = 0
j_fl = 0
j_fu = 0
j_fd = 0
j_fr_p = 0
j_fl_p = 0
j_fu_p = 0
j_fd_p = 0
for (var i = 0; i < 12; i += 1)
{
	j_prev[i] = 0
	j_on[i] = 0
}
global.button0 = 2
global.button1 = 1
global.button2 = 4
global.analog_sense = 0.15
global.analog_sense_sense = 0.01
global.joy_dir = 0
if (os_type == os_ps4 || os_type == os_psvita)
{
	if (substr(global.locale, 1, 2) == "ja")
	{
		global.button0 = gp_face2
		global.button1 = gp_face1
	}
	else
	{
		global.button0 = gp_face1
		global.button1 = gp_face2
	}
	global.button2 = gp_face4
}
else if (os_type == os_switch)
{
	global.button0 = gp_face2
	global.button1 = gp_face1
	global.button2 = gp_face4
}
else if (os_type == os_xboxone)
{
	global.button0 = gp_face1
	global.button1 = gp_face2
	global.button2 = gp_face4
}
global.default_button0 = global.button0
global.default_button1 = global.button1
global.default_button2 = global.button2
global.default_analog_sense = global.analog_sense
global.default_analog_sense_sense = global.analog_sense_sense
global.default_joy_dir = global.joy_dir
global.screen_border_id = 0
global.screen_border_active = false
global.screen_border_alpha = 1
global.screen_border_state = 0
global.screen_border_dynamic_fade_id = 0
global.screen_border_dynamic_fade_level = 0
global.screen_border_activate_on_game_over = 0
debug_r = 0
debug_f = 0
j1 = 0
j2 = 0
ja = 0
j_ch = 0
jt = 0
if (global.osflavor >= OSFlavors.Playstation)
{
	i = 0
	while (i < gamepad_get_device_count())
	{
		if gamepad_is_connected(i)
		{
			if (j_ch > 0)
			{
				j_ch = 0
				break
			}
			else
			{
				j_ch = (i + 1)
				i++
				continue
			}
		}
		else
		{
			i++
			continue
		}
	}
	if (j_ch == 0)
	{
		if (os_type == os_switch)
		{
			if (switch_controller_support_show() == false)
				j_ch = (switch_controller_support_get_selected_id() + 1)
		}
		else
			j_ch = 1
	}
}
spec_rtimer = 0
global.endsong_loaded = 0
control_init()
scr_kanatype_init()
if (!variable_global_exists("text_data_en"))
	textdata_en()
if (!variable_global_exists("text_data_ja"))
	textdata_ja()
if (os_type == os_switch)
	global.language = substr(switch_language_get_desired_language(), 1, 2)
else
	global.language = substr(global.locale, 1, 2)
if (global.language != "ja")
	global.language = "en"
if (!variable_global_exists("trophy_init_complete"))
{
	global.trophy_init_complete = 0
	trophy_ts = -1
}
// Daniela: due to code changes in the xbox version, this if check causes game crashes on anything other than an xbox, so its commented out here
// Daniela: there is a "fix" in the game start event, however due to room changes that never gets executed, oopsies!
//if (os_type == os_xboxone)
//{
	script_execute(SCR_GAMESTART, 0, 0, 0, 0, 0)
	time = 0
	image_speed = 0
	jjjjjj = 0
	repeat (20)
	{
		global.tempvalue[jjjjjj] = 0
		jjjjjj += 1
	}
	ossafe_savedata_load()
	started = 0
//}

// Daniela: decomp stuff
decomp_gamestart();