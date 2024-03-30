if (myinteract == 1)
{
    global.interact = 1
    alarm[0] = 1
    myinteract = 2
}
if (myinteract == 3)
{
    if (instance_exists(mydialoguer) == false && global.interact != 3)
    {
        global.interact = 0
        myinteract = 0
    }
}
