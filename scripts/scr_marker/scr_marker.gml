/// @func					scr_marker(x, y, sprite_index)
/// @desc					Creates a marker at a specified x, y with a specified sprite_index
/// @param {real}			x
/// @param {real}			y
/// @param {Asset.GMSprite}	sprite_index
function scr_marker(_x, _y, _sprite_index)
{
	thismarker = instance_create(_x, _y, obj_npc_marker)
	thismarker.visible = true
	thismarker.image_speed = 0
	thismarker.sprite_index = _sprite_index
	return thismarker;
}
