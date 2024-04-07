/// @func					snd_play(sound_handle)
/// @desc					Plays a sound without looping
/// @param	{Asset.GMSound}	sound_handle
function snd_play(_sound_handle)
{
	audio_play_sound(_sound_handle, 80, false)
}
