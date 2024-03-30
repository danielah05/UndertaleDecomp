function ossafe_file_text_eof()
{
	if (global.osflavor <= OSFlavors.Mac)
	    return file_text_eof(_filepath);
	else
	{
	    var handle = _filepath
	    return ds_map_find_value(handle, "line") >= ds_map_find_value(handle, "num_lines");
	}
}
