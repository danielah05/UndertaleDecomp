check = true
if instance_exists(obj_fakeheart)
{
    if (blue == BulletType.Blue)
    {
        check = false
        if (abs((obj_fakeheart.xprevious - obj_fakeheart.x)) > 0.01 || abs((obj_fakeheart.yprevious - obj_fakeheart.y)) > 0.01)
            check = true
    }
    if (blue == BulletType.Orange)
    {
        check = false
        if (abs((obj_fakeheart.xprevious - obj_fakeheart.x)) < 0.01 && abs((obj_fakeheart.yprevious - obj_fakeheart.y)) < 0.01)
            check = true
    }
    scr_damagestandard(BulletType.OneOff, 3, 0, 0, 0)
}
if instance_exists(obj_heart)
    scr_damagestandard(blue, 3, 0, 0, 0)
if (FL_QuickBattleType == QuickBattleType.Laser1 && FL_Laser2On == 0 && global.hp == 0)
{
    global.hp = 1
    global.invc = 60
}
