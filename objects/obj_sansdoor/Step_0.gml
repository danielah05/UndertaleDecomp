if (myinteract == 1)
{
    if (obj_kitchenchecker.level == 2 || obj_kitchenchecker.level == 1)
    {
        global.interact = 1
        alarm[0] = 1
        myinteract = 2
    }
    else
        myinteract = 0
}
if (myinteract == 3)
{
    if (instance_exists(mydialoguer) == false)
    {
        global.interact = 0
        myinteract = 0
    }
}
if (con == 4 && instance_exists(OBJ_WRITER) == false)
{
    global.interact = 1
    instance_create(obj_mainchara.x, (obj_mainchara.y + 20), obj_door_t)
    con = 5
}
