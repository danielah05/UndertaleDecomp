/// @func						snd_isplaying(sound_handle)
/// @desc						Checks if a sound is playing
/// @param		{Asset.GMSound}	sound_handle
/// @returns	{boolean}
function snd_isplaying(_sound_handle)
{
	return audio_is_playing(_sound_handle);
}
