/// @func					snd_audio_gain_ext(sound_handle, volume, time)
/// @desc					Plays a sound with extra settings
/// @param	{Asset.GMSound}	sound_handle
/// @param	{real}			volume
/// @param	{bool}			time
function snd_audio_gain_ext(_sound_handle, _volume, _time)
{
	audio_sound_gain(_sound_handle, _volume * (global.decomp_vars.SoundFXVolume / 100), _time) // Daniela: Set our custom Volume setting here as gain.
}
