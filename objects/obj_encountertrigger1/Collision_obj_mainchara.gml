if (global.interact == 0)
{
	global.battlegroup = BattleGroup.TorielFroggit
	instance_create(0, 0, obj_battleblcon)
	FL_TutorialFroggitEncountered = true
	instance_destroy()
}
