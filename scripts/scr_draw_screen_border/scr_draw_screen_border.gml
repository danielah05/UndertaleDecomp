function scr_draw_screen_border()
{
	var overlay;
	var border_id = argument0
	draw_enable_alphablend(false)
	if (border_id == 1)
	{
		if (os_type == os_ps4 || os_type == os_switch || os_type == os_xboxone)
			scr_draw_background_ps4(bg_border_line_1080, 0, 0)
		if (os_type == os_psvita)
			draw_background(bg_border_line_544, 0, 0)
	}
	if (border_id == 2)
	{
		var fade_time = 60
		if instance_exists(obj_stalkerflowey)
		{
			global.screen_border_state += (1 / fade_time)
			if (global.screen_border_state > 1)
				global.screen_border_state = 1
		}
		else
		{
			global.screen_border_state -= (1 / fade_time)
			if (global.screen_border_state < 0)
				global.screen_border_state = 0
		}
		var idle_min = 300000
		var idle_time = 0
		if (obj_time.idle && current_time >= (obj_time.idle_time + idle_min))
			idle_time = (current_time - (obj_time.idle_time + idle_min))
		var idle_frame = (floor((idle_time / 100)) % 3)
		var base = noone
		for (var i = 0; i < 9; i++)
		{
			overlay[i, 0] = noone
			overlay[i, 1] = spr_undertaletitle
			overlay[i, 2] = spr_undertaletitle
		}
		if (os_type == os_ps4 || os_type == os_switch || os_type == os_xboxone)
		{
			base = bg_border_sepia_1080
			overlay[0, 1] = spr_blconbelow
			overlay[0, 2] = spr_truechara_laugh
			overlay[1, 1] = spr_superbone
			overlay[1, 2] = buttonL_nx_zr
			overlay[2, 1] = spr_barktry_ja
			overlay[2, 2] = spr_finalfroggit
			overlay[3, 1] = spr_undertaletitle
			overlay[3, 2] = spr_undynex_example
			overlay[4, 1] = spr_vegetoid
			overlay[4, 2] = spr_blconbelow
			overlay[5, 1] = spr_umbrellaholder
			overlay[5, 2] = spr_undertaletitle
			overlay[6, 1] = spr_alphys_rt
			overlay[6, 2] = spr_alphyshelper_embarrass
			overlay[7, 1] = spr_table
			overlay[7, 2] = spr_gb_npc
			overlay[8, 1] = spr_undyne_d_dark
			overlay[8, 2] = spr_iceblock_bottom
			if (idle_frame == 1)
			{
				overlay[0, 0] = bg_border_sepia_1080_1a
				overlay[1, 0] = bg_border_sepia_1080_2a
				overlay[2, 0] = bg_border_sepia_1080_3a
				overlay[3, 0] = bg_border_sepia_1080_4a
				overlay[4, 0] = bg_border_sepia_1080_5a
				overlay[5, 0] = bg_border_sepia_1080_6a
				overlay[6, 0] = bg_border_sepia_1080_7a
				overlay[7, 0] = bg_border_sepia_1080_8a
				overlay[8, 0] = bg_border_sepia_1080_9a
			}
			else if (idle_frame == 2)
			{
				overlay[0, 0] = bg_border_sepia_1080_1b
				overlay[1, 0] = bg_border_sepia_1080_2b
				overlay[2, 0] = bg_border_sepia_1080_3b
				overlay[3, 0] = bg_border_sepia_1080_4b
				overlay[4, 0] = bg_border_sepia_1080_5b
				overlay[5, 0] = bg_border_sepia_1080_6b
				overlay[6, 0] = bg_border_sepia_1080_7b
				overlay[7, 0] = bg_border_sepia_1080_8b
				overlay[8, 0] = bg_border_sepia_1080_9b
			}
			if (global.screen_border_state > 0)
				overlay1 = 2903
		}
		else if (os_type == os_psvita)
		{
			base = bg_border_sepia_544
			overlay[0, 1] = spr_talkbt
			overlay[0, 2] = spr_undyneb_face3
			overlay[1, 1] = spr_heartorange
			overlay[1, 2] = spr_wizard_orbhurt
			overlay[2, 1] = spr_undertaletitle
			overlay[2, 2] = spr_oolbone_ja
			overlay[3, 1] = button_ps4_l3
			overlay[3, 2] = spr_undertaletitle
			overlay[4, 1] = buttonL_nx_zl
			overlay[4, 2] = spr_whimsunhurt
			overlay[5, 1] = buttonL_vita_triangle
			overlay[5, 2] = spr_vulkinface5
			if (idle_frame == 1)
			{
				overlay[0, 0] = bg_border_sepia_544_1a
				overlay[1, 0] = bg_border_sepia_544_2a
				overlay[2, 0] = bg_border_sepia_544_3a
				overlay[3, 0] = bg_border_sepia_544_4a
				overlay[4, 0] = bg_border_sepia_544_5a
				overlay[5, 0] = bg_border_sepia_544_6a
			}
			else if (idle_frame == 2)
			{
				overlay[0, 0] = bg_border_sepia_544_1b
				overlay[1, 0] = bg_border_sepia_544_2b
				overlay[2, 0] = bg_border_sepia_544_3b
				overlay[3, 0] = bg_border_sepia_544_4b
				overlay[4, 0] = bg_border_sepia_544_5b
				overlay[5, 0] = bg_border_sepia_544_6b
			}
			if (global.screen_border_state > 0)
				overlay1 = 2917
		}
		if (base != noone)
		{
			scr_draw_background_ps4(base, 0, 0)
			if (overlay[0, 0] != noone)
			{
				if (global.screen_border_state > 0)
				{
					draw_enable_alphablend(true)
					draw_set_alpha((global.screen_border_state * 0.5))
				}
				scr_draw_background_ps4(overlay[0, 0], overlay[0, 1], overlay[0, 2])
				if (global.screen_border_state > 0)
				{
					draw_set_alpha(1)
					draw_enable_alphablend(false)
				}
			}
			for (i = 1; i < 9; i++)
			{
				if (overlay[i, 0] != noone)
					scr_draw_background_ps4(overlay[i, 0], overlay[i, 1], overlay[i, 2])
			}
		}
	}
	if (border_id == 3)
	{
		var room_id = global.currentroom
		if ((room_id >= room_area1 && room_id <= room_ruinsexit) || (room >= room_introstory && room <= room_intromenu) || (room >= room_settings && room <= room_controltest))
			border_id = 4
		if ((room_id >= room_tundra1 && room_id <= room_fogroom) || room_id == room_shop1 || (room_id >= room_icecave1 && room_id <= room_ice_dog))
			border_id = 5
		if ((room_id >= room_water1 && room_id <= room_water_undynefinal3) || room_id == room_shop2 || room_id == room_shop5)
			border_id = 6
		if ((room_id >= room_fire1 && room_id <= room_fire_finalelevator) || room_id == room_shop3 || room_id == room_shop4 || (room_id >= room_fire_labelevator && room_id <= room_truelab_elevatorinside))
			border_id = 7
		if (room_id >= room_castle_elevatorout && room_id <= room_castle_trueexit)
			border_id = 8
		if (room_id >= room_truelab_elevator && room_id <= room_truelab_power)
			border_id = 9
		if (room_id == room_water_undynefinal3 || room_id == room_fire_elevator || room_id == room_fire_finalelevator || room_id == room_fire_labelevator || room_id == room_truelab_elevatorinside || room_id == room_riverman_transition || room_id == room_dogshrine || room_id == room_dogshrine_ruined || room_id == room_dogshrine_mewmew || room_id == room_dogshrine_xbox)
			border_id = 3.5
		if (FL_TrueLabBorderEnabled == 0 && (room_id == room_truelab_elevator || room_id == room_truelab_hall1))
			border_id = 3.5
		if (border_id != global.screen_border_state)
		{
			if (global.screen_border_state != 0)
			{
				if (global.screen_border_dynamic_fade_id == border_id)
					global.screen_border_dynamic_fade_level = (1 - global.screen_border_dynamic_fade_level)
				else
					global.screen_border_dynamic_fade_level = 1
				global.screen_border_dynamic_fade_id = global.screen_border_state
			}
			global.screen_border_state = border_id
		}
		if (global.screen_border_dynamic_fade_level > 0)
		{
			fade_time = 30
			global.screen_border_dynamic_fade_level -= (1 / fade_time)
			if (global.screen_border_dynamic_fade_level > 0)
			{
				scr_draw_screen_border(global.screen_border_dynamic_fade_id)
				draw_set_alpha((1 - global.screen_border_dynamic_fade_level))
			}
			else
			{
				global.screen_border_dynamic_fade_id = 0
				global.screen_border_dynamic_fade_level = 0
			}
		}
	}
	if (border_id == 3.5)
	{
		draw_set_color(c_black)
		ossafe_fill_rectangle(0, 0, window_get_width(), window_get_height())
		draw_set_color(c_white)
	}
	if (border_id == 4)
	{
		if (os_type == os_ps4 || os_type == os_switch || os_type == os_xboxone)
			scr_draw_background_ps4(bg_border_ruins_1080, 0, 0)
		if (os_type == os_psvita)
			draw_background(bg_border_ruins_544, 0, 0)
	}
	if (border_id == 5)
	{
		if (os_type == os_ps4 || os_type == os_switch || os_type == os_xboxone)
			scr_draw_background_ps4(bg_border_tundra_1080, 0, 0)
		if (os_type == os_psvita)
			draw_background(bg_border_tundra_544, 0, 0)
	}
	if (border_id == 6)
	{
		if (os_type == os_ps4 || os_type == os_switch || os_type == os_xboxone)
			scr_draw_background_ps4(bg_border_water1_1080, 0, 0)
		if (os_type == os_psvita)
			draw_background(bg_border_water1_544, 0, 0)
	}
	if (border_id == 7)
	{
		if (os_type == os_ps4 || os_type == os_switch || os_type == os_xboxone)
			scr_draw_background_ps4(bg_border_fire_1080, 0, 0)
		if (os_type == os_psvita)
			draw_background(bg_border_fire_544, 0, 0)
	}
	if (border_id == 8)
	{
		if (os_type == os_ps4 || os_type == os_switch || os_type == os_xboxone)
			scr_draw_background_ps4(bg_border_castle_1080, 0, 0)
		if (os_type == os_psvita)
			draw_background(bg_border_castle_544, 0, 0)
	}
	if (border_id == 9)
	{
		if (os_type == os_ps4 || os_type == os_switch || os_type == os_xboxone)
			scr_draw_background_ps4(bg_border_truelab_1080, 0, 0)
		if (os_type == os_psvita)
			draw_background(bg_border_truelab_544, 0, 0)
	}
	if (border_id == 10)
	{
		if (os_type == os_ps4 || os_type == os_switch || os_type == os_xboxone)
			scr_draw_background_ps4(bg_border_rad_1080, 0, 0)
		if (os_type == os_psvita)
			draw_background(bg_border_rad_544, 0, 0)
	}
	if (border_id == 11)
	{
		if (os_type == os_switch)
			scr_draw_background_ps4(bg_border_anime_1080, 0, 0)
	}
	if (border_id == 12)
	{
		if (os_type == os_switch)
			scr_draw_background_ps4(bg_border_dog_1080, 0, 0)
	}
	if (border_id == 13)
	{
		if (os_type == os_xboxone)
			scr_draw_background_ps4(bg_border_xbox_1080, 0, 0)
	}
	draw_set_alpha(1)
	draw_enable_alphablend(true)
}
