/// @func caster_play_l(sound_handle, volume, pitch)
/// @param {Asset.GMSound OR Id.Sound} sound_handle
/// @param {Real} volume
/// @param {Real} pitch
function caster_play_l(_sound_handle, _volume, _pitch)
{
	this_song_i = audio_play_sound(_sound_handle, 100, false)
	audio_sound_pitch(this_song_i, _pitch)
	// Daniela: decomp code
	if (array_contains(global.music_array, this_song_i))
		audio_sound_gain(this_song_i, _volume * (global.decomp_vars.MusicVolume / 100), 0);
	else
		audio_sound_gain(this_song_i, _volume, 0)
	return this_song_i;
}
