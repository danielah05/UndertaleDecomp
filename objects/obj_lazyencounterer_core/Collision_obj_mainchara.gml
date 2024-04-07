FL_InBattle = true
if (cl == 0)
{
    battleno = choose(64, 65)
    if (FL_CoreBattleProgressCounter == 0)
        battleno = 64
    if (FL_CoreBattleProgressCounter == 1)
        battleno = 65
    if (FL_CoreBattleProgressCounter == 2)
        battleno = 68
    if (FL_CoreWarriorsSwitchState == true && battleno == 68)
        battleno = 61
    global.battlegroup = battleno
    global.border = 0
    other.x = other.xprevious
    other.y = other.yprevious
    instance_create(0, 0, obj_battleblcon)
    cl = 1
    FL_CoreBattleProgressCounter += 1
    instance_destroy()
}
