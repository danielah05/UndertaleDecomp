/// @func	draw_custom_ext(bbox_left, bbox_right, bbox_top, bbox_bottom, sprite_index, image_index, x_scale, y_scale, alpha, x, y)
/// @desc	Custom draw sprite script with some extended settings.
/// @arg	{real}				bbox_left
/// @arg	{real}				bbox_right
/// @arg	{real}				bbox_top
/// @arg	{real}				bbox_bottom
/// @arg	{Asset.GMSprite}	sprite_index
/// @arg	{real}				image_index
/// @arg	{real}				x_scale
/// @arg	{real}				y_scale
/// @arg	{real}				alpha
/// @arg	{real}				x
/// @arg	{real}				y
function draw_custom_ext(_bbox_left, _bbox_right, _bbox_top, _bbox_bottom, _sprite_index, _image_index, _x_scale, _y_scale, _alpha, _x, _y)
{
	if (_sprite_index == spr_undertaletitle) // Daniela: This is never gonna happen, im unsure why this is here.
	    _sprite_index = sprite_index
	if (_image_index == 0)
	    _image_index = image_index
	if (_x_scale == 0)
	    _x_scale = 1
	if (_y_scale == 0)
	    _y_scale = 1
	l = 0
	t = 0
	w = sprite_width
	h = sprite_height
	ll = ((_bbox_left - _x) + 1)
	tt = ((_bbox_top - _y) + 1)
	ww = (((_x + w) - _bbox_right) - 1)
	hh = (((_y + h) - _bbox_bottom) - 1)
	if (ll > 0)
	    l += ll
	if (tt > 0)
	    t += tt
	if (ww > 0)
	    w -= ww
	if (hh > 0)
	    h -= hh
	w = round(w)
	h = round(h)
	l = round(l)
	t = round(t)
	if (w > sprite_get_width(_sprite_index))
	    w = sprite_get_width(_sprite_index)
	if (h > sprite_get_height(_sprite_index))
	    h = sprite_get_height(_sprite_index)
	if (w > 0 && h > 0)
	{
	    if (l < w && t < h)
	        draw_sprite_part_ext(_sprite_index, _image_index, l, t, (w - l), (h - t), (_x + l), (_y + t), _x_scale, _y_scale, c_white, _alpha)
	}
}
