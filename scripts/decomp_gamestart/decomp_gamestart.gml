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
	
	
	audio_falloff_set_model(audio_falloff_none);
}