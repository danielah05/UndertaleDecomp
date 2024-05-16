if (myinteract == 1 && global.plot < 6)
{
    FL_SparedLast = false
    FL_EscapedLast = false
    FL_KilledLast = false
    FL_BoredLast = false
    global.entrance = 0
    global.battlegroup = BattleGroup.RuinsDummy
    obj_mainchara.depth = -600
    if (instance_exists(obj_battler) == false)
        instance_create(0, 0, obj_battler)
    global.plot = 6
    myinteract = 0
}
scr_depth()
