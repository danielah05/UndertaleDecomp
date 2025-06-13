FL_InBattle = true
if (cl == 0)
{
	battleno = choose(BattleGroup.WhimsalotFinalFroggit, BattleGroup.WhimsalotAstigmatism)
	if (FL_CoreBattleProgressCounter == 0)
		battleno = BattleGroup.WhimsalotFinalFroggit
	if (FL_CoreBattleProgressCounter == 1)
		battleno = BattleGroup.WhimsalotAstigmatism
	if (FL_CoreBattleProgressCounter == 2)
		battleno = BattleGroup.KnightKnightMadjick
	if (FL_CoreWarriorsSwitchState == true && battleno == BattleGroup.KnightKnightMadjick)
		battleno = BattleGroup.FinalFroggit
	global.battlegroup = battleno
	global.border = 0
	other.x = other.xprevious
	other.y = other.yprevious
	instance_create(0, 0, obj_battleblcon)
	cl = 1
	FL_CoreBattleProgressCounter += 1
	instance_destroy()
}
