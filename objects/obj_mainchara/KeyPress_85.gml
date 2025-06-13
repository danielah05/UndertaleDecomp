// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
	if (FL_IncludeUndyneInPapyrusCalls == 0)
	{
		FL_IncludeUndyneInPapyrusCalls = 1
		image_blend = c_blue
	}
	else
	{
		FL_IncludeUndyneInPapyrusCalls = 0
		image_blend = c_yellow
	}
}
