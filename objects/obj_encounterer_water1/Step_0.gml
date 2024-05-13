if (global.encounter > steps)
{
    if (global.phasing == 0)
    {
        if (global.interact == 0)
        {
            scr_steps(340, 380, 18, 204)
            if (room == room_water6)
                scr_steps(1040, 380, 18, 204)
            global.encounter = 0
            battlegroup = floor(random(15))
            if (battlegroup < 15)
                global.battlegroup = BattleGroup.Woshua
            if (battlegroup < 11)
                global.battlegroup = BattleGroup.DoubleMoldsmal2
            if (battlegroup < 7)
                global.battlegroup = BattleGroup.Aaron
            if (battlegroup < 4)
                global.battlegroup = BattleGroup.WoshuaAaron
            if (FL_WaterfallBattleProgressCounter1 == 0)
                global.battlegroup = BattleGroup.Aaron
            if (FL_WaterfallBattleProgressCounter1 == 1)
                global.battlegroup = BattleGroup.Woshua
            if (FL_WaterfallBattleProgressCounter1 == 2)
                global.battlegroup = BattleGroup.DoubleMoldsmal2
            FL_WaterfallBattleProgressCounter1 += 1
            if (alldead == 2)
                global.battlegroup = BattleGroup.ButNobodyCame
            if (alldead == 1)
            {
                FL_WaterfallGenocide = 1
                global.battlegroup = BattleGroup.ButNobodyCame
                alldead = 2
            }
            else
            {
                instance_create(0, 0, obj_battleblcon)
                if (desto == 1)
                    instance_destroy()
            }
        }
    }
    else
        steps = 0
}
