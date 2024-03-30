if (global.decomp_vars.RestoreSFXPan && !global.decomp_vars.VanillaMode)
{
	if (audio_emitter != noone)
		audio_emitter_free(audio_emitter);
	
}
