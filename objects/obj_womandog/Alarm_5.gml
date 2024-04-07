with (blconwd)
    instance_destroy()
with (blcon)
    instance_destroy()
talked = false
whatiheard = -1
global.mnfight = 2
global.border = 8
if instance_exists(obj_mandog)
{
    if (obj_mandog.mycommand <= 50)
        global.border = 9
}
