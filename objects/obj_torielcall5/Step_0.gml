if (global.plot > 11)
    instance_destroy()
else if (global.interact == 1 && instance_exists(obj_dialoguer) == false && touch == 1)
{
    global.plot = 12
    global.interact = 0
    instance_destroy()
}
