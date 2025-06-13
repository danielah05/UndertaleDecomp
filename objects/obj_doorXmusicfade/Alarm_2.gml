instance_create(0, 0, obj_persistentfader)
if (room == room_tundra_town && x < 1000)
	room_goto(room_shop1)
if (room == room_tundra_town && x > (room_width - 80))
	room_goto(room_fogroom)
if (room == room_fogroom)
	room_goto(room_tundra_town)
if (room == room_tundra_iceexit)
{
	room_goto(room_icecave1)
	return;
}
if (room == room_icecave1)
{
	room_goto(room_tundra_iceexit)
	return;
}
if (room == room_water_bird)
	room_goto(room_water_friendlyhub)
if (room == room_water_friendlyhub)
	room_goto(room_water_bird)
if (room == room_water_shop)
	room_goto(room_shop2)
if (room == room_fire_hotelfront_2)
	room_goto(room_shop3)
if (room == room_fire_hotelfront_1)
	room_goto(room_fire_elevator_r3)
if (room == room_fire_elevator_r3)
	room_goto(room_fire_hotelfront_1)
if (room == room_fire_precore)
	room_goto(room_fire_hotellobby)
if (room == room_fire_hotellobby)
	room_goto(room_fire_precore)
if (room == room_asghouse1)
	room_goto(room_basement1_final)
if (room == room_basement1_final)
	room_goto(room_asghouse1)
if (room == room_castle_finalshoehorn)
	room_goto(room_castle_throneroom)
if (room == room_castle_throneroom)
	room_goto(room_castle_finalshoehorn)
if (room == room_water_temvillage)
	room_goto(room_shop5)
if (room == room_dogshrine)
	room_goto(room_tundra_sanshouse)
if (room == room_tundra_sanshouse)
{
	if (global.decomp_vars.VanillaMode)
	{
		if (global.osflavor == OSFlavors.Playstation)
			room_goto(room_dogshrine)
		if (global.osflavor == OSFlavors.Switch)
			room_goto(room_dogshrine_ruined)
		if (global.osflavor == OSFlavors.XboxOne)
		   room_goto(room_dogshrine_xbox)
	}	
	else
	{
		var psContent = global.decomp_vars.EnablePSDogShrine;
		var swContent = global.decomp_vars.EnableSwitchDogShrine;
		var xboxContent = global.decomp_vars.EnableXboxDogShrine;
		
		if (psContent && !swContent && !xboxContent)
			room_goto(room_dogshrine);
		else if (swContent && !psContent && !xboxContent)
			room_goto(room_dogshrine_ruined);
		else if (xboxContent && !psContent && !xboxContent)
			room_goto(room_dogshrine_xbox);
		else
		{
			if (FL_MadMewMewStatus >= MadMewMewStatus.Spared)
				room_goto(room_dogshrine_xbox);
			else if (FL_DogShrineLevel == 15)
				room_goto(room_dogshrine_ruined);
			else
				room_goto(room_dogshrine);
		}
		
	}
	
	
}
if (room == room_dogshrine_ruined)
	room_goto(room_tundra_sanshouse)
if (room == room_dogshrine_xbox)
	room_goto(room_tundra_sanshouse)
