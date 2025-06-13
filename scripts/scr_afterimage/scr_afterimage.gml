/// @func				scr_afterimage(alpha_down, growth)
/// @desc				TODO: THIS DESC
/// @param		{real}	alpha_down
/// @param		{real}	growth
/// @returns	{Id.Instance}
function scr_afterimage(_alpha_down, _growth)
{
	genafterimage = instance_create(x, y, obj_genafterimage)
	genafterimage.sprite_index = sprite_index
	genafterimage.image_index = image_index
	genafterimage.size = image_xscale
	genafterimage.size = image_yscale
	genafterimage.image_angle = image_angle
	genafterimage.image_blend = image_blend
	genafterimage.image_speed = 
	genafterimage.depth = (depth + 1)
	if (argument0 > 0)
		genafterimage.alphadown = (1 / _alpha_down)
	if (argument1 > 0)
		genafterimage.growth = _growth
	return genafterimage;
}
