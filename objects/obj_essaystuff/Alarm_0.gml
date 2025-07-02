cantype = 0
con = 1

// Daniela: bring back qwertz support when using qwertz input
if (global.decomp_vars.QwertzInput && !global.decomp_vars.VanillaMode)
	keyboard_set_map(ord("Y"), ord("Z"));
