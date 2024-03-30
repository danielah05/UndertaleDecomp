function load_trophies()
{
	if (!ossafe_file_exists("trophies.ini"))
		return;
	
	var handle = ossafe_ini_open("trophies.ini");
	var mapSize = ds_map_size(global.trophy_state);

	var item = ds_map_find_first(global.trophy_state);
	
	repeat (mapSize)
	{
		ds_map_set(global.trophy_state, item, ini_read_real("default", item, 0));
		trace($"Found Trophy: \"{item}\" = ${ds_map_find_value(global.trophy_state, item)}");
		item = ds_map_find_next(global.trophy_state, item);
	}
		
	ossafe_ini_close(handle);
}