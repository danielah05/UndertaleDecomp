if (room == room_water5)
{
    if (global.plot < 107)
    {
        global.plot = 107
        instance_create(40, 340, obj_stalkerflowey)
    }
}
if (room == room_water19)
{
    if (global.plot < 119)
    {
        global.plot = 119
        instance_create(140, 420, obj_stalkerflowey)
        obj_echoflower.xxx = 1
    }
}
if (room == room_water_friendlyhub)
{
    if (FL_CurrentNapstablookSong > 0 && FL_AaronWoshuaEvent == 0 && global.interact == 0)
    {
        global.interact = 1
        global.battlegroup = 46
        instance_create(0, 0, obj_battler)
    }
}
if (room == room_fire_cookingshow && global.interact == 0)
{
    global.interact = 1
    obj_cookshowevent.con = 50
}
instance_destroy()
