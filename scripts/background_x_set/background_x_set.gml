/// @func	background_x_set(background_index, x)
/// @desc	Wrapper for deprecated background_x, Sets the specified background's X position
/// @param	{real}	background_index	The background index to set the X position of
/// @param	{real}	x					The X position to set
function background_x_set(_background_index, _x)
{
	//var info = layer_get_legacy_background_info(_background_index);
	//return layer_x(info[0], _x);
	__background_set(BG_PROP_X, _background_index, _x);
}