FL_AreaKillsPointer = KillsPointer_Hotland
image_xscale = 6
con = 0
if (FL_TruePacifist == true || FL_DisableRandomEncounters == true || global.plot > 198)
{
	instance_destroy()
	return;
}
if (FL_GotAlphysAdvice4 == 1)
	instance_destroy()
else
	con = 1
