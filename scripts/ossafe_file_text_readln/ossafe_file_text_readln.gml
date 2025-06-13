/// @func	ossafe_file_text_readln(filepath)
/// @arg	{string} filepath
function ossafe_file_text_readln(_filepath)
{
	if (global.osflavor <= OSFlavors.Mac)
		return file_text_readln(_filepath);
	else
	{
		var handle = _filepath
		ds_map_set(handle, "line_read", 0)
		var line = ds_map_set_post(handle, "line", (ds_map_find_value(handle, "line") + 1))
		if (line >= ds_map_find_value(handle, "num_lines"))
			return "";
		text = ds_map_find_value(handle, "text")
		return (text[line] + "\r\n");
	}
}
