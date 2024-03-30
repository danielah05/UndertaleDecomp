/// @func	ossafe_file_text_read_string(filepath)
/// @arg	{string} filepath
function ossafe_file_text_read_string(_filepath)
{
	if (global.osflavor <= OSFlavors.Mac)
	    return file_text_read_string(_filepath);
	else
	{
	    var handle = _filepath
	    if ds_map_find_value(handle, "line_read")
	        return "";
	    var line = ds_map_find_value(handle, "line")
	    if (line >= ds_map_find_value(handle, "num_lines"))
	        return "";
	    ds_map_set(handle, "line_read", 1)
	    text = ds_map_find_value(handle, "text")
	    return text[line];
	}
}
