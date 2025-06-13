/// @func	scr_84_load_map_json(filename)
/// @desc	Loads data from a json file, mainly used for text data.
/// @arg	{string}	filename	File to read from

// Daniela: this is a script borrowed from Deltarune, this is not actually part of Undertales code.
// Daniela: this is primarily used to heavily optimize compile times, if u do not like this use the vanilla branch!!!
function scr_84_load_map_json(_filename)
{
	var filename = _filename
	if file_exists(filename)
	{
		var file_buffer = buffer_load(filename)
		var json = buffer_read(file_buffer, buffer_string)
		buffer_delete(file_buffer)
		return json_decode(json);
	}
	else
	{
		show_debug_message("file: " + filename + "does not exist")
		return json_decode("{}");
	}
}
