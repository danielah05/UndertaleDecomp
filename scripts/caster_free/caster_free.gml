/// @func caster_free(sound_index)
/// @param {Asset.GMSound OR Id.Sound} sound_index
function caster_free(_sound_index)
{
	if (_sound_index != all)
		audio_stop_sound(_sound_index);
	else
		audio_stop_all();
}
