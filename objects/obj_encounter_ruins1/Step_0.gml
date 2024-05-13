if (global.encounter > steps)
{
    if (global.interact == 0)
    {
        scr_steps(190, 80, 20, 202)
        if (FL_Hardmode == true)
            scr_steps(100, 60, 20, 202)
        global.encounter = 0
        if (FL_Hardmode == false)
        {
            battlegroup = random(2)
            if (battlegroup <= 1)
                global.battlegroup = BattleGroup.Froggit
            if (battlegroup > 1)
                global.battlegroup = BattleGroup.Whimsun
        }
        else
        {
            battlegroup = random(3)
            if (battlegroup <= 1)
                global.battlegroup = BattleGroup.HardModeFinalFroggit
            if (battlegroup > 1)
                global.battlegroup = BattleGroup.HardModeFinalFroggitWhimsalot
            if (battlegroup > 2)
                global.battlegroup = BattleGroup.HardModeFinalFroggitAstigmatism
        }
        if (alldead == 2)
            global.battlegroup = BattleGroup.ButNobodyCame
        if (alldead == 1)
        {
            global.battlegroup = BattleGroup.ButNobodyCame
            alldead = 2
        }
        else
            instance_create(0, 0, obj_battleblcon)
    }
}
