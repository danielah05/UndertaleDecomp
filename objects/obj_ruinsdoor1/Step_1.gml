if (room == room_ruins2)
{
    if instance_exists(obj_wallswitchcut1)
    {
        if (obj_wallswitchcut1.on == 2 || global.plot > 2)
            instance_destroy()
    }
}
