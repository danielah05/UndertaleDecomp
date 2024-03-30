var dir_x = obj_time.right - obj_time.left;
var dir_y = obj_time.up - obj_time.down;

var btn_0 = control_check(InteractButton);
var btn_1 = control_check(CancelButton);
var btn_2 = control_check(MenuButton);
//control_clear(InteractButton);
//control_clear(CancelButton);
//control_clear(MenuButton);

if (hover_category == -1)
{
	slider_hold_timer = 0;
	button_hold_timer = 0;
	if (dir_y == -1)
		hover_category = 0;
	
	if (btn_0 && !prev_button_0)
	{
		event_user(0);
		caster_free(all);
		room_goto(room_intromenu);
	}
	return;
}

if (selected_category == -1)
{
	slider_hold_timer = 0;
	button_hold_timer = 0;
	if (dir_x != prev_dir_x && ((hover_category + dir_x) < array_length(categories)))
		hover_category += dir_x;
	
	if (dir_y == 1)
		hover_category = -1;
		
	if (btn_0 && !prev_button_0)
	{
		selected_category = hover_category;
		hover_option = 0;
	}
}
else
{
	if (dir_y != prev_dir_y && dir_y != 0 && ((hover_option - dir_y) > -1) && ((hover_option - dir_y) < array_length(categories[selected_category].options)))
	{
		slider_hold_timer = 0;
		button_hold_timer = 0;
		hover_option -= dir_y;
	}
	var cat = categories[selected_category];
	var hover_op = cat.options[hover_option];
	
	// Vultu: Move this here so it's look prettier
	if (hover_op.type == MenuOptionTypes.HoldButton && hover_op.holdtimer == button_hold_timer && hover_op.callbackFunction != noone)
		button_hold_timer = 0;
		
	if (dir_x != 0)
	{
		if (hover_op.type == MenuOptionTypes.Slider)
		{
			if (hover_op.value + dir_x >= hover_op.minValue && hover_op.value + dir_x <= hover_op.maxValue)
			{
				if (sign(slider_hold_timer) != sign(dir_x))
					slider_hold_timer = 0;
					
				var dir_x_multiplier = hover_op.baseSpeed;
				
				if (abs(slider_hold_timer) >= 1000)
				{
					slider_hold_timer = sign(slider_hold_timer) * 1000; // Vultu: Clamp just in case
					dir_x_multiplier = hover_op.fastSpeed;
				}
				else
					slider_hold_timer += (sign(dir_x) * room_speed);
				
				hover_op.value += (dir_x * dir_x_multiplier);
				
				hover_op.value = clamp(hover_op.value, hover_op.minValue, hover_op.maxValue);
				
				if (hover_op.callbackFunction != noone)
					script_execute(hover_op.callbackFunction, hover_op);
			}
			else
				slider_hold_timer = 0;
		}
	}
	else
		slider_hold_timer = 0;
		
	if (btn_0)
	{
		switch (hover_op.type)
		{
			case MenuOptionTypes.HoldButton:
				if (button_hold_timer < hover_op.holdtimer)
					button_hold_timer++;
				break;
		}
	}
	else
		button_hold_timer = 0;
	
	if (btn_0 && !prev_button_0)
	{
		switch (hover_op.type)
		{
			case MenuOptionTypes.CheckBox:
				var cat = categories[selected_category];
				var hover_op = cat.options[hover_option];
				hover_op.value = !hover_op.value;
				if (hover_op.callbackFunction != noone)
					script_execute(hover_op.callbackFunction, hover_op);
				break;
			case MenuOptionTypes.Slider:
				break;
		}
	}
		
	if (btn_1 && !prev_button_1)
	{
		selected_category = -1;
		hover_option = -1;
		slider_hold_timer = 0;
		button_hold_timer = 0;
	}
	
	if (btn_2 && !prev_button_2 && hover_op.type != MenuOptionTypes.HoldButton)
		hover_op.value = hover_op.defaultValue;
		
	if (hover_op.type == MenuOptionTypes.HoldButton && hover_op.holdtimer == button_hold_timer && hover_op.callbackFunction != noone)
		script_execute(hover_op.callbackFunction);
	
}


prev_dir_x = dir_x;
prev_dir_y = dir_y;

prev_button_0 = btn_0;
prev_button_1 = btn_1;
prev_button_2 = btn_2;