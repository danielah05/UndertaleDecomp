/// @func	texture_set_interpolation(enable)
/// @desc	Sets the games texture interpolation on or off.
/// @arg	{bool}	enable	Enable/Disable Interpolation
function texture_set_interpolation(_enable)
{
	gpu_set_texfilter(_enable)
}
