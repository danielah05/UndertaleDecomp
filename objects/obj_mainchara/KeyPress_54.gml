// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
	if keyboard_check(ord("F"))
		room_goto(room_fire2)
	if keyboard_check(ord("T"))
		room_goto(room_tundra1)
	if keyboard_check(ord("W"))
		room_goto(room_water1)
	if keyboard_check(ord("E"))
		room_goto(room_castle_front)
	if keyboard_check(ord("R"))
		room_goto(room_ruins2)
	if keyboard_check(ord("Y"))
		room_goto(room_truelab_elevator)
}
