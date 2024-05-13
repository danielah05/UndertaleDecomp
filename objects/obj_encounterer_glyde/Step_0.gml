if (global.encounter > steps)
{
    if (global.phasing == 0)
    {
        if (global.interact == 0)
        {
            scr_steps(840, 680, 16, 203)
            global.encounter = 0
            global.battlegroup = BattleGroup.Glyde
            if (alldead == 2)
                global.battlegroup = BattleGroup.ButNobodyCame
            if (alldead == 1)
            {
                FL_TundraGenocide = 1
                global.battlegroup = BattleGroup.ButNobodyCame
                alldead = 2
            }
            else
            {
                instance_create(0, 0, obj_battleblcon)
                instance_destroy()
            }
        }
        else
            steps = 0
    }
}
