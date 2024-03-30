global.battlegroup = 18
if (FL_Hardmode == true)
    global.battlegroup = 122
FL_AreaKillsPointer = KillsPointer_Ruins
global.interact = 0
instance_create(0, 0, obj_battler)
instance_destroy()
