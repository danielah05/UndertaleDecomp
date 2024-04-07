function __init_joystick()
{
	global.__jstick_pad1 = 4
	global.__jstick_pad2 = 5
	global.__jstick_povangle = [-1, 0, 90, 45, 180, -1, 135, -1, 270, 315, -1, -1, 225, -1, -1, -1]
	joystick_process_events(1)
}
