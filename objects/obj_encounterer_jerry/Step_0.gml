if (global.encounter > steps)
{
    if (global.phasing == 0)
    {
        if (global.interact == 0)
        {
            scr_steps(840, 680, 16, 203)
            global.encounter = 0
            battlegroup = round(random(15))
            if (battlegroup >= 0)
                global.battlegroup = 35
            if (battlegroup > 8)
                global.battlegroup = 36
            if (FL_TundraBattleProgress < 3)
            {
                global.battlegroup = 24
                FL_TundraBattleProgress = 4
            }
            if (alldead == 2)
                global.battlegroup = 19
            if (alldead == 1)
            {
                FL_TundraGenocide = 1
                global.battlegroup = 19
                alldead = 2
            }
            else
                instance_create(0, 0, obj_battleblcon)
        }
    }
    else
        steps = 0
}
