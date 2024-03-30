// Daniela: welcome to hell
if (!global.decomp_vars.VanillaMode)
{
	switch room
	{
		case room_ruins4:
			var lay_id = layer_get_id("Tiles_Depth_1000000_2")
			var map_id = layer_tilemap_get_id(lay_id);
			var data = tile_set_index(ts_ruinseasynam2, 30);
			tilemap_set(map_id, data, 14, 2);
		break;
		
		case room_ruins5:
			instance_create_layer(800, 120, "Instances_Depth_999999", obj_fakewaterl);
			instance_create_layer(1140, 140, "Instances_Depth_999999", obj_fakewatershadowr);
		break;
		
		case room_ruins6:
			var lay_id = layer_get_id("Tiles_Depth_999999")
			var map_id = layer_tilemap_get_id(lay_id);
			data = tile_set_index(ts_ruinseasynam2, 86);
			tilemap_set(map_id, data, 32, 1);
			tilemap_set(map_id, data, 36, 3);
		break;
	}
}