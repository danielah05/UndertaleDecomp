waterboard = 0
won = 0
if (scr_murderlv() >= MurderLevel.Lv8PapyrusKilled && FL_SparedSpecific == 0)
{
    if (global.plot < 107)
        global.plot = 107
    if (FL_ResetBridgeseedPuzzle == 0)
        FL_ResetBridgeseedPuzzle = 1
}
if (room == room_water5 && global.entrance == 2)
{
    xx = 420
    yy = 400
    i = 0
    repeat (4)
    {
        event_user(0)
        xx += 20
    }
}
if (room == room_water5 && global.plot > 106)
{
    xx = 220
    yy = 180
    i = 0
    repeat (4)
    {
        event_user(0)
        yy += 20
    }
}
if (room == room_water13)
{
    if (global.plot > 110 || global.entrance == 2)
    {
        xx = 180
        yy = 440
        i = 0
        repeat (4)
        {
            event_user(0)
            xx += 20
        }
    }
}
if (room == room_water_bridgepuzz1 && FL_ResetBridgeseedPuzzle == 1)
{
    xx = 280
    yy = 140
    i = 0
    repeat (4)
    {
        event_user(0)
        xx += 20
    }
}
