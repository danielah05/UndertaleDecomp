global.battlegroup = BattleGroup.Vegetoid
if (FL_Hardmode == true)
    global.battlegroup = BattleGroup.HardModeParsnik
FL_AreaKillsPointer = KillsPointer_Ruins
global.interact = 0
instance_create(0, 0, obj_battler)
instance_destroy()
