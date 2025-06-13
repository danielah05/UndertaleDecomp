/// @func	scr_flash(fade_speed, amount, color)
/// @desc	Sets up a flash
/// @param	{real}	fade_speed
/// @param	{real}	amount
/// @param	{real}	color
function scr_flash(_fade_speed, _amount, _color)
{
	var __arg0 = _fade_speed;
	if (_fade_speed == 0)
		__arg0 = 0.2
	if (_amount == 0)
		__arg0 = 1
	if (_color == 0)
		__arg0 = c_white
	g = instance_create(x, y, obj_flasher)
	g.color = _color
	g.amt = _amount
	g.fadespeed = __arg0
}
