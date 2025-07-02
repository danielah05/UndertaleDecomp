// Daniela: welcome to hell
if (!global.decomp_vars.VanillaMode)
{
	switch room
	{
		// RUINS
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
		
		case room_ruins10:
			var lay_id = layer_get_id("Tiles_Depth_999999")
			var map_id = layer_tilemap_get_id(lay_id);
			data = tile_set_index(ts_ruinseasynam3, 90);
			tilemap_set(map_id, data, 16, 26);
			tilemap_set(map_id, data, 22, 31);
		break;
		
		case room_ruins16:
			var lay_id = layer_get_id("Tiles_Depth_999999")
			var map_id = layer_tilemap_get_id(lay_id);
			data = tile_set_index(ts_ruinseasynam3, 90);
			tilemap_set(map_id, data, 17, 8);
		break;
		
		// SNOWDIN
		case room_tundra_grillby:
			instance_create_layer(55, 90, "Instances_Depth_0", obj_solidsmall);
	}
}