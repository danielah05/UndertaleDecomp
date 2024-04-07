scr_depth(0, 0, 0, 0, 0)
if (FL_GotRibbon == true && instance_exists(obj_dialoguer) == false)
{
    instance_destroy()
    global.interact = 0
}
