/// @func	ossafe_file_text_write_real(filepath, value)
/// @arg	{string} filepath
/// @arg	{Real} value
function ossafe_file_text_write_real(_filepath, _value)
{
	if (global.osflavor <= OSFlavors.Mac)
		return file_text_write_real(_filepath, _value);
	else
	{
		var handle = _filepath
		ds_map_set(handle, "data", (ds_map_find_value(handle, "data") + string(_value)))
	}
}
