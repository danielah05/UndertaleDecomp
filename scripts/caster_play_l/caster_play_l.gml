/// @func caster_play_l(sound_handle, volume, pitch)
/// @param {Asset.GMSound OR Id.Sound} sound_handle
/// @param {Real} volume
/// @param {Real} pitch
function caster_play_l(_sound_handle, _volume, _pitch)
{
	this_song_i = audio_play_sound(_sound_handle, 100, false)
	audio_sound_pitch(this_song_i, _pitch)
	// Daniela: decomp code
	if (array_contains(global.music_array, this_song_i)) // if true then its music
		audio_sound_gain(this_song_i, _volume * (global.decomp_vars.MusicVolume / 100), 0);
	else // else assume its sfx
		audio_sound_gain(this_song_i, _volume * (global.decomp_vars.SoundFXVolume / 100), 0)
	return this_song_i;
}
