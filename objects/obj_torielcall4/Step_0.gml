if (global.plot > 9.7)
    instance_destroy()
else if (global.interact == 1 && instance_exists(obj_dialoguer) == false)
{
    global.plot = 9.8
    global.interact = 0
    instance_destroy()
}
