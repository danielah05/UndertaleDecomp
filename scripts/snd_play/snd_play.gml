/// @func					snd_play(sound_handle)
/// @desc					Plays a sound without looping
/// @param	{Asset.GMSound}	sound_handle
function snd_play(_sound_handle)
{
	// Daniela: decomp code for volume settings
	audio_play_sound(_sound_handle, 80, false, 1 * (global.decomp_vars.SoundFXVolume / 100))
}
