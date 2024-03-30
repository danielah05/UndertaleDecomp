on = 0
myinteract = 0
if (room == room_fire8 && FL_CompletedShootPuzzle1 ==  true)
    event_user(0)
if (room == room_fire9 && FL_CompletedShootPuzzle2 ==  true)
    event_user(0)
if (room == room_fire_core_warrior && FL_CoreWarriorsSwitchState == true)
    event_user(0)
if (room == room_fire_core_warrior)
    depth = 700000
