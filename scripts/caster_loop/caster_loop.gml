/// @func caster_loop(sound_handle, volume, pitch)
/// @param {Asset.GMSound OR Id.Sound} sound_handle
/// @param {Real} volume
/// @param {Real} pitch

// Daniela: hacky decomp only function, this is stupid im sorry
function is_music(_sound_handle)
{
	// Daniela: essentially the basement in toriels house uses the intro noise slowed down as ambience, as i personally consider the intro sound as a sound effect, this code makes this special use case of it get affected by the music volume
	if (_sound_handle == mus_intronoise && instance_exists(obj_basementmusic))
		return true;

	return array_contains(global.music_array, _sound_handle);
}

function caster_loop(_sound_handle, _volume, _pitch)
{
	this_song_i = audio_play_sound(_sound_handle, 120, true)
	audio_sound_pitch(_sound_handle, _pitch)
	// Daniela: decomp code
	if (is_music(_sound_handle)) // if true then its music
		audio_sound_gain(_sound_handle, _volume * (global.decomp_vars.MusicVolume / 100), 0);
	else // else assume its sfx
		audio_sound_gain(_sound_handle, _volume * (global.decomp_vars.SoundFXVolume / 100), 0);
	return this_song_i;
}
