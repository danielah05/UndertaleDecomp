/// @func	draw_background(sprite_index, x, y)
/// @desc	Essentially draw_sprite but again.
/// @arg	{Asset.GMSprite}	sprite_index	Sprite to draw
/// @arg	{real}				x				X Position
/// @arg	{real}				y				Y Position
function draw_background(_sprite_index, _x, _y)
{
	draw_sprite(_sprite_index, 0, _x, _y)
}
