/// @func	sprite_create_from_screen_x(x, y, width, height, removeback, smooth, xorig, yorig)
/// @desc	Create a sprite based on a position on the screen
/// @arg	{real}		x							X position of the screen to copy from
/// @arg	{real}		y							Y position of the screen to copy from
/// @arg	{real}		width					The width of the copied area
/// @arg	{real}		height				The height of the copied area
/// @arg	{bool}	removeback	Decide if the background should be transparent
/// @arg	{bool}	smooth				Decide if the edges should be smooth
/// @arg	{real}		xorig					X origin of the created sprite
/// @arg	{real}		yorig					Y origin of the created sprite
function sprite_create_from_screen_x(_x, _y, _width, _height, _removeback, _smooth, _xorig, _yorig)
{
	return sprite_create_from_surface(application_surface, _x, _y, _width, _height, _removeback, _smooth, _xorig, _yorig);
}
