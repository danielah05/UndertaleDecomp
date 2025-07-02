function decomp_gamestart()
{
	if (!trophy_init())
	{
		if (obj_time.trophy_ts < 0)
			obj_time.trophy_ts = current_time;
	}
	
	load_decomp_vars();
	save_decomp_vars();
	
	load_trophies();
	save_trophies();
	
	// Daniela: this is here for qwertz support
	if (global.decomp_vars.QwertzInput && !global.decomp_vars.VanillaMode)
		keyboard_set_map(ord("Y"), ord("Z"));
	
	// Daniela: force set master volume here on game start to fix bug
	audio_set_master_gain(0, global.decomp_vars.MasterVolume / 100.0);
	
	audio_falloff_set_model(audio_falloff_none);
}