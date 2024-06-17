if (global.interact == 0)
{
    global.interact = 1
    global.battlegroup = BattleGroup.Shyren
    instance_create(0, 0, obj_battler)
    if (global.plot < 111)
        global.plot = 111
    instance_destroy()
}
