/// @func	draw_background_stretched(sprite_index, x, y, width, height)
/// @desc	Essentially draw_sprite_stretched but again.
/// @arg	{Asset.GMSprite}	sprite_index	Sprite to draw
/// @arg	{real}				x				X Position
/// @arg	{real}				y				Y Position
/// @arg	{real}				width			Width
/// @arg	{real}				height			Height
function draw_background_stretched(_sprite_index, _x, _y, _width, _height)
{
	draw_sprite_stretched(_sprite_index, 0, _x, _y, _width, _height)
}
