if (global.debug == true)
{
    global.battlegroup = (BattleGroup.MettatonSecond + nnn)
    global.border = 0
    instance_create(0, 0, obj_battleblcon)
    if (global.plot == 998)
    {
        FL_SparedLast = false
        FL_EscapedLast = false
        FL_KilledLast = false
        FL_BoredLast = false
        global.entrance = 0
        global.battlegroup = BattleGroup.LemonBread
        obj_mainchara.depth = -600
        if (instance_exists(obj_battler) == false)
            instance_create(0, 0, obj_battler)
    }
}
