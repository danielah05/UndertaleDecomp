/// @func	ossafe_file_text_close(textFileID)
/// @desc	Safely closes a text file
/// @param	{Id.TextFile}	textFileID	The text file to close
function ossafe_file_text_close(_textFileID)
{
	if (global.osflavor <= OSFlavors.Mac)
	    return file_text_close(_textFileID);
	else
	{
	    var handle = textFileID
	    if ds_map_find_value(handle, "is_write")
	        ds_map_set(global.savedata, ds_map_find_value(handle, "filename"), ds_map_find_value(handle, "data"))
	    ds_map_destroy(handle)
	}
}
