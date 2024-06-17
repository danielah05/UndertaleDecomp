if (global.encounter > steps)
{
    if (global.phasing == 0)
    {
        if (global.interact == 0)
        {
            scr_steps(140, 280, 16, 203)
            global.encounter = 0
            battlegroup = floor(random(15))
            if (battlegroup >= 0)
                global.battlegroup = BattleGroup.Snowdrake
            if (battlegroup >= 8)
                global.battlegroup = BattleGroup.Icecap
            if (FL_TundraBattleProgress == 0)
                global.battlegroup = BattleGroup.Snowdrake
            if (FL_TundraBattleProgress == 1)
                global.battlegroup = BattleGroup.Icecap
            if (FL_TundraBattleProgress == 2 && global.plot < 42)
                global.battlegroup = choose(BattleGroup.Snowdrake, BattleGroup.Icecap)
            if (FL_TundraBattleProgress == 2 && global.plot >= 42)
            {
                global.battlegroup = BattleGroup.LesserDog
                FL_TundraBattleProgress = 4
            }
            if (scr_murderlv() >= 2 && FL_TundraBattleProgress == 2)
            {
                global.battlegroup = BattleGroup.LesserDog
                FL_TundraBattleProgress = 4
            }
            if (FL_TundraBattleProgress < 2)
                FL_TundraBattleProgress += 1
            if (alldead == 2)
                global.battlegroup = BattleGroup.ButNobodyCame
            if (alldead == 1)
            {
                FL_TundraGenocide = 1
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
