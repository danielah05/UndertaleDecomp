if (myinteract == 1)
{
    if (obj_kitchenchecker.level == 0)
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
