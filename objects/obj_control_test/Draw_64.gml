key_down_A = keyboard_check_pressed(ord("Z"));
key_down_B = control_check_pressed(InteractButton);


if (key_down_A && !key_down_B)
	trace("A-!B");
if (!key_down_A && key_down_B)
	trace("!A-B");
if (key_down_A && key_down_B)
	trace("A-B");

draw_set_color(c_white)
if (key_down_A)
	draw_set_color(c_yellow)
draw_rectangle(30, 30, 30, 30, false)


draw_set_color(c_white)
if (key_down_A)
	draw_set_color(c_yellow)
draw_rectangle(90, 90, 30, 30, false)

control_clear(InteractButton);
keyboard_clear(ord("Z"))