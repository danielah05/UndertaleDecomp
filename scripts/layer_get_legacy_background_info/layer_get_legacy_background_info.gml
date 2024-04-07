/// @func	layer_get_legacy_background_info(background_index)
/// @desc	Retrieves the background info for a layer named "Background/Foreground_<index>"
/// @param	{real}	background_index	The background index to search for
/// @returns	{Array}
function layer_get_legacy_background_info(_background_index)
{
	// this is not used yet it is a wip
	var layer_list = layer_get_all();
	var layer_list_length = array_length(layer_list);
	var curr_layer = -1;
	var curr_element = -1;
	for (var i = 0; i < layer_list_length; i++)
	{
		curr_layer = layer_list[i];
		var curr_layer_name = layer_get_name(curr_layer);
		if (string_starts_with(curr_layer_name, "Compatibility_Background_") || string_starts_with(curr_layer_name, "Compatibility_Foreground_"))
		{
			var bg_id = string_digits(string_char_at(curr_layer_name, 26));
			if (bg_id == "")
				continue;
				
			if (real(bg_id) == _background_index)
			{
				var element_list = layer_get_all_elements(curr_layer);
				var element_length = array_length(element_list);
				
				for (var e = 0; e < element_length; e++)
				{
					curr_element = element_list[e];
					
					if (layer_get_element_type(curr_element) != layerelementtype_background)
						continue;
						
					return [ curr_layer, curr_element ];
				}
			}
				
		}
	}
	return [ -1, -1 ];
}