event_user(9)
alarm[10] = 80
if (destroyer > 1)
    alarm[10] = (30 - (destroyer * 2))
if (alarm[10] <= 3)
{
    global.my_hp = 0
    alarm[10] = choose(2, 3)
}
if (destroyer > 31)
{
    global.my_hp = 1
    obj_vsflowey_heart.move = 0
    obj_vsflowey_heart.alarm[5] = -1
    global.my_hp = 1
    alarm[10] = -1
    obj_floweyx_flipeye.md = 0
    dcon = 20
}
