/// @func caster_set_volume(sound_handle, volume)
/// @param {Asset.GMSound OR Id.Sound} sound_handle
/// @param {Real} volume
function caster_set_volume(_sound_handle, _volume)
{
	// Daniela: decomp code
	if (array_contains(global.music_array, _sound_handle)) // if true then its music
		audio_sound_gain(_sound_handle, _volume * (global.decomp_vars.MusicVolume / 100), 0);
	else // else assume its sfx
		audio_sound_gain(_sound_handle, _volume * (global.decomp_vars.SoundFXVolume / 100), 0);
}
