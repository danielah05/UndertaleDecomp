if (global.osflavor >= OSFlavors.Console)
{
    if (os_is_paused() && (!paused) && (!global.disable_os_pause))
    {
        paused = true
        audio_pause_all()
        instance_deactivate_all(true)
    }
    else if ((!os_is_paused()) && paused)
    {
        instance_activate_all()
        audio_resume_all()
        paused = false
    }
}


/// DECOMP CODE PAST THIS POINT

if (global.decomp_vars.DevConsoleEnabled)
{
	var con_active = obj_decomp_console.active;
	if (con_active && !paused && !global.disable_os_pause)
	{
		paused = true;
	}
	else if (!con_active && paused)
	{
		paused = false;
	}
}