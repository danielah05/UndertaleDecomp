/// @func					snd_play_ex(sound_handle, priority, loop)
/// @desc					Plays a sound (Decomp Script)
/// @param	{Asset.GMSound}	sound_handle
/// @param	{real}			priority
/// @param	{bool}			loop
function snd_play_ex(_sound_handle, _priority, _loop)
{
	return audio_play_sound(_sound_handle, _priority, _loop, 1 * (global.decomp_vars.SoundFXVolume / 100))
}
