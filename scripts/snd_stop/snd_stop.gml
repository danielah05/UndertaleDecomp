/// @func					snd_stop(sound_handle)
/// @desc					Stops a playing sound
/// @param	{Asset.GMSound}	sound_handle
function snd_stop(_sound_handle)
{
	audio_stop_sound(_sound_handle)
}
