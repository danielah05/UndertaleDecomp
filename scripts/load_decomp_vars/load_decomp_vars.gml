function load_decomp_vars()
{
	if (!ossafe_file_exists("decomp_vars.ini"))
		return;
	
	var handle = ossafe_ini_open("decomp_vars.ini");
	var keys = variable_struct_get_names(global.decomp_vars);
	for (var i = 0; i < array_length(keys); i++)
	{
		var key = keys[i];
		if (ini_key_exists("General", key))
			global.decomp_vars[$key] = ini_read_real("General", key, global.decomp_vars[$key]);
	}
	ossafe_ini_close(handle);
}