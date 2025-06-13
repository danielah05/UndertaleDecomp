/// @func		ossafe_file_text_write_string(textFileID, text)
/// @desc		Safely writes text to a text file
/// @param		{Id.TextFile}	textFileID	The text file to write to
/// @param		{string}		_text		The text to write
/// @returns	{real}
function ossafe_file_text_write_string(_textFileID, _text)
{
	if (global.osflavor <= OSFlavors.Mac)
		return file_text_write_string(_textFileID, _text);
	else
	{
		var handle = _textFileID
		ds_map_set(handle, "data", (ds_map_find_value(handle, "data") + _text))
	}
}
