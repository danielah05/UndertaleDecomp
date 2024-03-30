/// @func caster_set_volume(sound_handle, volume)
/// @param {Asset.GMSound OR Id.Sound} sound_handle
/// @param {Real} volume
function caster_set_volume(_sound_handle, _volume)
{
	audio_sound_gain(_sound_handle, _volume, 0)
	
	/* if (global.decomp_vars.VanillaMode)
		audio_sound_gain(_sound_handle, _volume, 0);
	else
		audio_sound_gain(_sound_handle, _volume * (global.decomp_vars.MasterVolume / 100), 0); */
	
}
