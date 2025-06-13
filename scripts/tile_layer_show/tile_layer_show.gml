/// @func	tile_layer_show(layer_depth)
/// @desc	Shows tile layer depending on depth.
/// @arg	{real}	layer_depth	Depth of Layer to show
function tile_layer_show(_layer_depth)
{
	var __depth = _layer_depth
	var __layers = layer_get_all()
	var __numlayers = array_length(__layers)
	for (var __i = 0; __i < __numlayers; __i++)
	{
		if (layer_get_depth(__layers[__i]) != __depth)
		{
		}
		else
		{
			// DECOMP CODE
			layer_set_visible(__layers[__i], true);
			return;
			//
			var __els = layer_get_all_elements(__layers[__i])
			var __numels = array_length(__els)
			for (var __j = 0; __j < __numels; __j++)
			{
				var __eltype = layer_get_element_type(__els[__j])
				if (__eltype == 7)
					layer_tile_visible(__els[__j], 1)
			}
		}
	}
}
