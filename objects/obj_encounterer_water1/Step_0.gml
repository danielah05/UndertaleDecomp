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
                global.battlegroup = 43
            if (battlegroup < 11)
                global.battlegroup = 53
            if (battlegroup < 7)
                global.battlegroup = 40
            if (battlegroup < 4)
                global.battlegroup = 54
            if (FL_WaterfallBattleProgressCounter1 == 0)
                global.battlegroup = 40
            if (FL_WaterfallBattleProgressCounter1 == 1)
                global.battlegroup = 43
            if (FL_WaterfallBattleProgressCounter1 == 2)
                global.battlegroup = 53
            FL_WaterfallBattleProgressCounter1 += 1
            if (alldead == 2)
                global.battlegroup = 19
            if (alldead == 1)
            {
                FL_WaterfallGenocide = 1
                global.battlegroup = 19
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
