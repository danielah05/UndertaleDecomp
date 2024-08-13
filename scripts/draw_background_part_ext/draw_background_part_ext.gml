/// @func draw_background_part_ext(back, left, top, width, height, x, y, xscale, yscale, colour, alpha)
/// @desc (Legacy GM) Draws part of a background at a given position with scaling, blending and alpha options.
function draw_background_part_ext(_back, _left, _top, _width, _height, _x, _y, _xscale, _yscale, _colour, _alpha)
{
	draw_sprite_part_ext(_back, 0, _left, _top, _width, _height, _x, _y, _xscale, _yscale, _colour, _alpha)
}
