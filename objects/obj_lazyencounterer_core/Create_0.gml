instance_destroy()
cl = 0
if (FL_CoreBattleProgressCounter > 1 && room != room_fire_core_bridge)
	instance_destroy()
if (FL_DisableRandomEncounters == true || FL_TruePacifist == true)
	instance_destroy()
