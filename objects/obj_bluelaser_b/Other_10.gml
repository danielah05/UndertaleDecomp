check = 1
if instance_exists(obj_fakeheart)
{
    if (blue == 1)
    {
        check = 0
        if (abs((obj_fakeheart.xprevious - obj_fakeheart.x)) > 0.01 || abs((obj_fakeheart.yprevious - obj_fakeheart.y)) > 0.01)
            check = 1
    }
    if (blue == 2)
    {
        check = 0
        if (abs((obj_fakeheart.xprevious - obj_fakeheart.x)) < 0.01 && abs((obj_fakeheart.yprevious - obj_fakeheart.y)) < 0.01)
            check = 1
    }
    scr_damagestandard(3, 3, 0, 0, 0)
}
if instance_exists(obj_heart)
    scr_damagestandard(blue, 3, 0, 0, 0)
if (FL_QuickBattleType == QuickBattleType.Laser1 && FL_Laser2On == 0 && global.hp == 0)
{
    global.hp = 1
    global.invc = 60
}
