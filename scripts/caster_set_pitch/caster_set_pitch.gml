/// @func caster_set_pitch(sound_handle, pitch)
/// @param {Asset.GMSound OR Id.Sound} sound_handle
/// @param {Real} pitch
function caster_set_pitch(_sound_handle, _pitch)
{
	audio_sound_pitch(_sound_handle, _pitch)
}
