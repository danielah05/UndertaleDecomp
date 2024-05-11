/// @func caster_play(sound_handle, volume, pitch)
/// @param {Asset.GMSound OR Id.Sound} sound_handle
/// @param {Real} volume
/// @param {Real} pitch
function caster_play(_sound_handle, _volume, _pitch)
{
	this_song_i = audio_play_sound(_sound_handle, 100, false)
	audio_sound_pitch(_sound_handle, _pitch)
	// Daniela: decomp code
	if (array_contains(global.music_array, _sound_handle)) // if true then its music
		audio_sound_gain(_sound_handle, _volume * (global.decomp_vars.MusicVolume / 100), 0);
	else // else assume its sfx
		audio_sound_gain(_sound_handle, _volume * (global.decomp_vars.SoundFXVolume / 100), 0);
	return this_song_i;
}
