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
if (obj_kitchenchecker.level == 0)
    scr_depth()
if (obj_kitchenchecker.level > 0)
    depth = 100005
// Daniela: added with xbox version
if place_meeting(x, y, obj_mainchara)
{
    if instance_exists(obj_kitchenchecker)
    {
        if (obj_kitchenchecker.level == 1 || obj_kitchenchecker.level == 0)
        {
            with (obj_mainchara)
            {
                x = xprevious
                y = yprevious
                moving = false
            }
        }
    }
}
