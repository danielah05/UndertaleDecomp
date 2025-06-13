/// @func		ossafe_file_text_writeln(textFileID)
/// @desc		Safely writes a linebreak to a text file
/// @param		{Id.TextFile}	textFileID	The text file to write to
/// @returns	{real}
function ossafe_file_text_writeln(_textFileID)
{
	if (global.osflavor <= OSFlavors.Mac)
		return file_text_writeln(_textFileID);
	else
	{
		var handle = _textFileID
		ds_map_set(handle, "data", (ds_map_find_value(handle, "data") + "\r\n"))
	}
}
