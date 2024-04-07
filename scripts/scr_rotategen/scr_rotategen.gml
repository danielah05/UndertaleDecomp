/// @func	scr_rotategen(number, radius, bullettype, x, y)
/// @desc	Generates a ring of bullets
///	@param	{Real}				number		The number of bullets to generate in the ring
///	@param	{Real}				radius		The radius of the generated ring
/// @param	{Asset.GMObject}	bullettype	The bullet type to use
/// @param	{Real}				x			Ring center's x coordinate
/// @param	{Real}				y			Ring center's y coordinate
function scr_rotategen(_number, _radius, _bullettype, _x, _y)
{
	global.bulletvariable[0] = _number
	global.bulletvariable[1] = _radius
	global.bulletvariable[2] = _bullettype
	gen = instance_create(_x, _y, obj_rotategen)
}
