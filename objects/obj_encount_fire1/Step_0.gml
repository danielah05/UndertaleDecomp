if (global.encounter > steps)
{
    if (global.phasing == 0)
    {
        if (global.interact == 0)
        {
            scr_steps(340, 380, 40, 205)
            if (room == room_fire5)
                scr_steps(1040, 680, 40, 205)
            global.encounter = 0
            battlegroup = floor(random(15))
            if (battlegroup < 15)
                global.battlegroup = 50
            if (battlegroup < 10)
                global.battlegroup = 78
            if (battlegroup < 6)
                global.battlegroup = 77
            if (FL_DisableRandomEncounters == true || FL_TruePacifist == true)
                instance_destroy()
            if (FL_HotlandBattleProgressCounter == 0)
                global.battlegroup = 51
            if (FL_HotlandBattleProgressCounter == 1)
                global.battlegroup = 50
            if (FL_HotlandBattleProgressCounter == 2)
                global.battlegroup = 52
            if (FL_HotlandBattleProgressCounter == 3)
                global.battlegroup = 77
            if (FL_HotlandBattleProgressCounter == 4)
                global.battlegroup = 78
            FL_HotlandBattleProgressCounter += 1
            if (alldead == 2)
                global.battlegroup = 19
            if (alldead == 1)
            {
                FL_HotlandGenocide = 1
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
