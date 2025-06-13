image_yscale = 20
t = 0
if (global.plot >= 64)
	instance_destroy()
// Daniela: decomp exclusive code for music fix
if (!global.decomp_vars.VanillaMode)
{
	murder = 0;
	if (scr_murderlv() >= 3)
		murder = 1;
}