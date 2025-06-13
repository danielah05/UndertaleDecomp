alldead = 0
global.encounter = 0
scr_steps(120, 30, 16, 203)
if (room == room_tundra_snowpuzz && FL_ToggledSnowSwitch != 0)
	scr_steps(220, 30, 16, 203)
if (FL_TundraKillsCounter == 0 && global.plot > 100)
	instance_destroy()
if (room == room_tundra_dangerbridge)
{
	if (global.plot < 67)
		instance_destroy()
}
