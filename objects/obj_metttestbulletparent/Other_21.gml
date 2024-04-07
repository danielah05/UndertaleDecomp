if (global.invc <= 0)
{
    dmg = 9
    if (!instance_exists(obj_mettheart_parent))
    {
        if (global.attacktype == 37)
            global.specialdam[0] += 1
        if (global.attacktype == 39)
            global.specialdam[1] += 1
        if (global.attacktype == 43)
            global.specialdam[2] += 1
        if (global.hp >= 30)
            dmg = 10
        else if (global.hp >= 20)
            dmg = 9
        else if (global.hp >= 5)
            dmg = 8
        else
            dmg = 6
        scr_damagestandard_x()
        if (global.hp <= 0)
            global.hp = 0
    }
    else
    {
        taken = 0
        if (instance_exists(obj_mettheart_4) == false)
        {
            if (global.hp >= 24 && taken == 0)
            {
                taken = 1
                dmg = 9
            }
            if (global.hp >= 16 && taken == 0)
            {
                taken = 1
                dmg = 8
            }
            if (global.hp >= 8 && taken == 0)
            {
                taken = 1
                dmg = 7
            }
            if (global.hp >= 3 && taken == 0)
            {
                taken = 1
                dmg = 6
            }
            if (global.hp >= 0 && taken == 0)
            {
                taken = 1
                dmg = 5
            }
        }
        else
        {
            if (global.hp >= 30 && taken == 0)
            {
                taken = 1
                dmg = 9
            }
            if (global.hp >= 20 && taken == 0)
            {
                taken = 1
                dmg = 8
            }
            if (global.hp >= 12 && taken == 0)
            {
                taken = 1
                dmg = 7
            }
            if (global.hp >= 4 && taken == 0)
            {
                taken = 1
                dmg = 6
            }
            if (global.hp >= 0 && taken == 0)
            {
                taken = 1
                dmg = 5
            }
        }
        scr_damagestandard_x()
        if (global.hp <= 0)
            global.hp = 0
    }
    global.failure[global.attacktype] += 1
}
