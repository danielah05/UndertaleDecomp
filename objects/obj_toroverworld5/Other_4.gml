if (global.plot > 7 || global.plot < 6)
    instance_destroy()
else
{
    direction = 270
    facing = Direction.Down
    global.msc = 216
    global.typer = 4
    global.facechoice = 1
    instance_create(0, 0, obj_dialoguer)
    global.interact = 1
}
