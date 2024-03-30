if (global.encounter > steps)
{
    if (global.interact == 0)
    {
        scr_steps(120, 100, 20, 202)
        if (FL_Hardmode == true)
            scr_steps(120, 60, 20, 202)
        global.encounter = 0
        battlegroup = random(20)
        if (battlegroup <= 4)
            global.battlegroup = 11
        if (battlegroup > 4)
            global.battlegroup = 12
        if (battlegroup > 8)
            global.battlegroup = 13
        if (battlegroup > 12)
            global.battlegroup = 16
        if (battlegroup > 16)
            global.battlegroup = 17
        if (battlegroup > 19)
            global.battlegroup = 15
        if (FL_Hardmode == true)
        {
            if (battlegroup <= 4)
                global.battlegroup = 128
            if (battlegroup > 4)
                global.battlegroup = 129
            if (battlegroup > 8)
                global.battlegroup = 130
            if (battlegroup > 12)
                global.battlegroup = 121
            if (battlegroup > 16)
                global.battlegroup = 124
            if (battlegroup > 19)
                global.battlegroup = 132
        }
        if (alldead == 2)
            global.battlegroup = 19
        if (alldead == 1)
        {
            global.battlegroup = 19
            alldead = 2
        }
        else
            instance_create(0, 0, obj_battleblcon)
    }
}
