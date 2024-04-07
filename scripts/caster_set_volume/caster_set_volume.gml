/// @func caster_set_volume(sound_handle, volume)
/// @param {Asset.GMSound OR Id.Sound} sound_handle
/// @param {Real} volume
function caster_set_volume(_sound_handle, _volume)
{
	audio_sound_gain(_sound_handle, _volume, 0)
}
