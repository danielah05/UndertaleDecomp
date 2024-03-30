image_speed = 0.5
ex = 0
active = true
siner = 0
blue = 1
rememberhspeed = 0
event_user(1)
if (room == room_fire_newsreport)
{
    if (FL_Laser2On == 1)
        active = 2
    if (global.plot > 160)
        active = 2
}
if (global.plot > 184)
    active = 2
if (FL_TruePacifist == true)
    active = 2
activebuffer = 0
