if (global.encounter > steps)
{
    if (global.interact == 0)
    {
        scr_steps(130, 160, 20, 202)
        if (FL_Hardmode == true)
            scr_steps(120, 60, 20, 202)
        global.encounter = 0
        battlegroup = random(15)
        if (battlegroup <= 2)
            global.battlegroup = BattleGroup.Vegetoid
        if (battlegroup > 2)
            global.battlegroup = BattleGroup.MoldsmalMigosp
        if (battlegroup > 9)
            global.battlegroup = BattleGroup.Loox
        if (FL_Hardmode == true)
        {
            battlegroup = random(20)
            if (battlegroup <= 4)
                global.battlegroup = BattleGroup.HardModeMoldessaMigospel
            if (battlegroup > 4)
                global.battlegroup = BattleGroup.HardModeParsnikMigospel
            if (battlegroup > 8)
                global.battlegroup = BattleGroup.HardModeDoubleParsnik
            if (battlegroup > 12)
                global.battlegroup = BattleGroup.HardModeFinalFroggitMigospel
            if (battlegroup > 16)
                global.battlegroup = BattleGroup.HardModeTripleMoldessa
            if (battlegroup > 19)
                global.battlegroup = BattleGroup.HardModeDoubleAstigmatism
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
