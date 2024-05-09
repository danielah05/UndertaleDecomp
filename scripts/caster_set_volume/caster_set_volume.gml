/// @func caster_set_volume(sound_handle, volume)
/// @param {Asset.GMSound OR Id.Sound} sound_handle
/// @param {Real} volume
function caster_set_volume(_sound_handle, _volume)
{
	// Daniela: decomp code
	if (array_contains(global.music_array, _sound_handle))
		audio_sound_gain(_sound_handle, _volume * (global.decomp_vars.MusicVolume / 100), 0);
	else
		audio_sound_gain(_sound_handle, _volume, 0);
}
