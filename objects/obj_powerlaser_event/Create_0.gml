con = 0
powered = 0
drawblack = 0
i = 0
repeat (25)
{
    ge[i] = instance_create((500 + (i * 20)), 40, obj_bluelaser_o)
    ge[i].hspeed = 0
    ge[i].rememberhspeed = 0
    ge[i].active = true
    i += 1
}
if (global.plot > 182)
{
    obj_bluelaser_o.active = 2
    obj_bluelaser_o.hspeed = 0
    obj_bluelaser_o.alarm[3] = 2
    instance_destroy()
}
flasher = 0
remhp = global.hp
hptalk = 0
