/// @func	scr_conshake(shake_strength)
/// @desc	Shakes screen with configurable strength.
/// @arg	{real}	shake_strength	Screen Shake Strength
function scr_conshake(_shake_strength)
{
	consiner += 1
	view_xview_set(0, (conshakex + (sin(consiner) * _shake_strength)))
	view_yview_set(0, (conshakey + (cos(consiner) * _shake_strength)))
}
