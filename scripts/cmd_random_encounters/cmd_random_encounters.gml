function cmd_random_encounters(_args)
{	
	obj_decomp_console.random_encounters = !obj_decomp_console.random_encounters;
	
	var enabled = obj_decomp_console.random_encounters;
	command_writeline($"Random encounters are now {enabled ? "on" : "off"}.");
}