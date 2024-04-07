if (myinteract == 1)
{
    global.interact = 1
    alarm[0] = 1
    myinteract = 2
}
if (myinteract == 3)
{
    if (instance_exists(mydialoguer) == false && con == 0)
    {
        global.interact = 0
        myinteract = 0
    }
}
