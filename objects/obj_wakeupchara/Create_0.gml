active = false
if (room == room_water_trashzone1)
{
    if (global.plot < 114)
    {
        FL_MenuDisabled = false
        active = true
        obj_mainchara.image_angle = -90
        obj_mainchara.y += 10
        global.facing = Direction.Down
    }
}
