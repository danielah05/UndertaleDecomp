on = 1
image_speed = 0.25
sprite_index = spr_onoffswitch_on
if (room == room_fire8)
	FL_CompletedShootPuzzle1 = true
if (room == room_fire9)
	FL_CompletedShootPuzzle2 = true
if (room == room_fire_core_warrior)
{
	FL_CoreWarriorsSwitchState = true
	scr_tempsave()
}
