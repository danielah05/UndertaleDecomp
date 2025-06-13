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
