/// @func	background_index_get(background_index)
/// @desc	Wrapper for deprecated background_index, Gets the specified background's sprite_index
/// @param	{real}	background_index	The background index to get sprite_index of
/// @returns	{Asset.GMSprite}
function background_index_get(_background_index)
{
	return __background_get(BG_PROP_SPRITE, _background_index);
}