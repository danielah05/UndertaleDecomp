if instance_exists(OBJ_NOMSCWRITER)
{
    with (blconwd)
        instance_destroy()
}
if instance_exists(obj_blconsm)
{
    with (blcon)
        instance_destroy()
}
if instance_exists(obj_blconwdflowey)
{
    with (obj_blconwdflowey)
        instance_destroy()
}
talked = false
whatiheard = -1
global.mnfight = 2
if (mycommand < 40 || global.hp < 3)
    global.border = 7
