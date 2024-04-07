/// @func	background_y_set(background_index, y)
/// @desc	Wrapper for deprecated background_y, Sets the specified background's Y position
/// @param	{real}	background_index	The background index to set the Y position of
/// @param	{real}	y					The Y position to set
function background_y_set(_background_index, _y)
{
	//var info = layer_get_legacy_background_info(_background_index);
	//return layer_y(info[0], _y);
	__background_set(BG_PROP_Y, _background_index, _y);
}