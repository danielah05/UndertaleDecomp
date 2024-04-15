/// @func					snd_play_ext(sound_handle, priority, loop)
/// @desc					Plays a sound with extra settings
/// @param	{Asset.GMSound}	sound_handle
/// @param	{real}			priority
/// @param	{bool}			loop
function snd_play_ext(_sound_handle, _priority, _loop)
{
	audio_play_sound(_sound_handle, _priority, _loop, global.decomp_vars.SoundFXVolume / 100) // Daniela: Set our custom Volume setting here as gain.
}
