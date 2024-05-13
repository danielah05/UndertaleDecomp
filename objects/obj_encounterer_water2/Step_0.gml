if (global.encounter > steps)
{
    if (global.phasing == 0)
    {
        if (global.interact == 0)
        {
            scr_steps(640, 380, 18, 204)
            if (scr_murderlv() >= 10 && FL_SparedSpecific == 0)
                scr_steps(120, 50, 18, 204)
            global.encounter = 0
            battlegroup = floor(random(15))
            if (battlegroup < 15)
                global.battlegroup = BattleGroup.WoshuaAaron
            if (battlegroup < 10)
                global.battlegroup = BattleGroup.WoshuaMoldbygg
            if (battlegroup < 4)
                global.battlegroup = BattleGroup.Temmie
            if (FL_WaterfallBattleProgressCounter2 == 0)
                global.battlegroup = BattleGroup.Temmie
            if (FL_WaterfallBattleProgressCounter2 == 1)
                global.battlegroup = BattleGroup.DoubleMoldsmal
            if (FL_WaterfallBattleProgressCounter2 == 2)
                global.battlegroup = BattleGroup.WoshuaAaron
            if (FL_WaterfallBattleProgressCounter2 == 3)
                global.battlegroup = BattleGroup.WoshuaMoldbygg
            FL_WaterfallBattleProgressCounter2 += 1
            if (alldead == 2)
                global.battlegroup = BattleGroup.ButNobodyCame
            if (alldead == 1)
            {
                FL_WaterfallGenocide = 1
                global.battlegroup = BattleGroup.ButNobodyCame
                alldead = 2
            }
            else
                instance_create(0, 0, obj_battleblcon)
        }
    }
    else
        steps = 0
}
