if (myinteract == 1 && global.plot < 108 && room == room_water6)
{
    event_user(1)
    global.plot = 108
}
if (room == room_water_piano && con == 1 && FL_CompletedPianoPuzzle == 0)
{
    FL_CompletedPianoPuzzle = 1
    global.interact = 1
    con = 2
    alarm[3] = 30
}
