/// @func caster_is_playing(sound_handle)
/// @param {Asset.GMSound OR Id.Sound} sound_handle
function caster_is_playing(_sound_handle)
{
	return audio_is_playing(_sound_handle);
	/* Old Code - Vultu 
	if audio_is_playing(_sound_index)
	    return 1;
	else
	    return 0;
	*/
}
