/// @func	scr_shake(h_shake, v_shake, shake_speed)
/// @desc	Creates a screen shake with configurable settings.
/// @arg	{real}	h_shake		Horizontal Screen Shake Size
/// @arg	{real}	v_shake		Vertical Screen Shake Size
/// @arg	{real}	shake_speed	Screen Shake Speed
function scr_shake(_h_shake, _v_shake, _shake_speed)
{
	instance_create(0, 0, obj_shaker)
	obj_shaker.hshake = _h_shake
	obj_shaker.vshake = _v_shake
	obj_shaker.shakespeed = _shake_speed
}
