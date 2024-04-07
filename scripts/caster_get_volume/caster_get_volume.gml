/// @func caster_get_volume(sound_handle)
/// @param {Asset.GMSound OR Id.Sound} sound_handle
function caster_get_volume(_sound_handle)
{
	return audio_sound_get_gain(_sound_handle);
}
