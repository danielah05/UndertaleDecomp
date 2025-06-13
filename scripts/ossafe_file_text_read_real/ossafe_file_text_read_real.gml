function ossafe_file_text_read_real(_filepath)
{
	if (global.osflavor <= OSFlavors.Mac)
		return file_text_read_real(_filepath);
	else
	{
		var handle = _filepath
		if ds_map_find_value(handle, "line_read")
			return 0;
		var line = ds_map_find_value(handle, "line")
		if (line >= ds_map_find_value(handle, "num_lines"))
			return 0;
		ds_map_set(handle, "line_read", 1)
		text = ds_map_find_value(handle, "text")
		return real(text[line]);
	}
}
