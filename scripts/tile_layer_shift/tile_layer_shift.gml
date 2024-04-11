/// @func	tile_layer_shift(layer_depth, x_shift, y_shift)
/// @desc	Shift tile layer depending on depth.
/// @arg	{real}	layer_depth	Depth of Layer to shift
/// @arg	{real}	x_shift		Shift Layer by X
/// @arg	{real}	y_shift		Shift Layer by Y
function tile_layer_shift(_layer_depth, _x_shift, _y_shift)
{
    var __depth = _layer_depth
    var __x = _x_shift
    var __y = _y_shift
    var __layers = layer_get_all()
    var __numlayers = array_length(__layers)
    for (var __i = 0; __i < __numlayers; __i++)
    {
        if (layer_get_depth(__layers[__i]) != __depth)
        {
        }
        else
        {    
            var __els = layer_get_all_elements(__layers[__i])
            var __numels = array_length(__els)
            for (var __j = 0; __j < __numels; __j++)
            {
                var __eltype = layer_get_element_type(__els[__j])
                if (__eltype == 7)
                {
                    layer_tile_x(__els[__j], (layer_tile_get_x(__els[__j]) + __x))
                    layer_tile_y(__els[__j], (layer_tile_get_y(__els[__j]) + __y))
                }
            }
        }
    }
}