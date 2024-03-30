function save_trophies()
{
	show_debug_message("Attempting to save trophies...");
	var handle = ossafe_ini_open("trophies.ini");

	var mapSize = ds_map_size(global.trophy_state);
	
	var item = ds_map_find_first(global.trophy_state);
	
	repeat (mapSize)
	{
		ini_write_real("default", item, ds_map_find_value(global.trophy_state, item));
		item = ds_map_find_next(global.trophy_state, item);
	}

		
	ossafe_ini_close(handle);
	show_debug_message("Successfully saved trophies");
}