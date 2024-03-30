if (global.turntimer < 1)
{
    global.turntimer = -1
    global.mnfight = 3
    instance_destroy()
}
if (path_position < 0.5)
    path_speed += 0.2
if (path_position > 0.5)
    path_speed -= 0.1
if (path_position == 1)
{
    path_end()
    speed = 0
    gravity = 0
    inactive = 1
}
if (global.hp <= 2)
    global.turntimer = -100
