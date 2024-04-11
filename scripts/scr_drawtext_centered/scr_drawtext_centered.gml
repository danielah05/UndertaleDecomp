/// @func	scr_drawtext_centered(x, y, text)
/// @desc	Draws centered text at specific position.
/// @arg	{real}		x		X Position
/// @arg	{real}		y		Y Position
/// @arg	{string}	text	Text String
function scr_drawtext_centered(_x, _y, _text)
{
	var xx = _x
	var yy = _y
	var text = _text
	scr_drawtext_centered_scaled(xx, yy, text, 1, 1)
}
