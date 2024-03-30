/// @func caster_stop(sound_handle, volume)
/// @param {Asset.GMSound OR Id.Sound} sound_handle
function caster_stop(_sound_handle)
{
	caster_free(_sound_handle)
}
