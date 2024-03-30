myinteract = 0
image_yscale = 4
alarm[3] = 1
siner = 0
basic = 1
canttalk = 0
disable = 0
sold = 0
if (global.plot >= 185)
{
    if (room == room_fire_prelab)
        instance_destroy()
    if (room == room_fire_elevator_r3)
        instance_destroy()
}
