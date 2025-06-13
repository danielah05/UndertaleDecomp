image_xscale = 6
con = 0
FL_AreaKillsPointer = KillsPointer_Hotland
if (global.plot > 178)
	instance_destroy()
if (FL_TruePacifist == true || FL_DisableRandomEncounters == true)
{
	instance_destroy()
	return;
}
