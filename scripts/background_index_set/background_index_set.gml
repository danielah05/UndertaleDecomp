/// @func	background_index_set(background_index, sprite_index)
/// @desc	Wrapper for deprecated background_index, Sets the specified background's sprite_index
/// @param	{real}				background_index	The background index to set sprite_index of
/// @param	{Asset.GMSprite}	sprite_index	The sprite_index to set
function background_index_set(_background_index, _sprite_index)
{
	__background_set(BG_PROP_SPRITE, _background_index, _sprite_index);
}