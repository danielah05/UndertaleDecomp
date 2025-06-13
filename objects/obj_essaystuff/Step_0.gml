if (!keyboard_present)
	return;
if (cantype == 1)
{
	var newchar = ""
	var backspace = 0
	if keyboard_check_pressed(vk_anykey)
	{
		var exc = 0
		if keyboard_check_pressed(vk_right)
			exc = 1
		if keyboard_check_pressed(vk_left)
			exc = 1
		if keyboard_check_pressed(vk_up)
			exc = 1
		if keyboard_check_pressed(vk_down)
			exc = 1
		if keyboard_check_pressed(vk_backspace)
		{
			exc = 1
			backspace = 1
		}
		if control_check_pressed(CancelButton)
			exc = 1
		if control_check_pressed(InteractButton)
			exc = 1
		if keyboard_check_pressed(vk_escape)
			exc = 1
		if (exc == 0)
		{
			newchar = keyboard_lastchar
			if (keyboard_check_pressed(ord("Z")) && (!control_check_pressed(InteractButton)))
				newchar = "z"
			if (keyboard_check_pressed(ord("X")) && (!control_check_pressed(CancelButton)))
				newchar = "x"
		}
	}
	if (newchar != "")
	{
		if (endbuffer < 30)
			endbuffer = 30
		if (global.language == "ja")
			mystring = scr_kanatype_append(mystring, newchar)
		else
			mystring += newchar
	}
	else if backspace
	{
		if (string_length(mystring) > 1)
			mystring = string_delete(mystring, string_length(mystring), 1)
	}
}
endbuffer -= 1
if (endbuffer < 0 && alarm[0] > 10)
	alarm[0] = 10
