FL_InBattle = true
if (global.encounter > steps)
{
    if (global.phasing == 0)
    {
        if (global.interact == 0)
        {
            scr_steps(340, 380, 40, 205)
            if (room == room_fire5)
                scr_steps(1040, 680, 40, 205)
            if (scr_murderlv() >= 12)
                scr_steps(70, 120, 40, 205)
            global.encounter = 0
            battlegroup = floor(random(15))
            if (battlegroup <= 15)
                global.battlegroup = 66
            if (battlegroup <= 12)
                global.battlegroup = 64
            if (battlegroup <= 9)
                global.battlegroup = 65
            if (battlegroup == 4 || battlegroup == 5 || battlegroup == 6)
                global.battlegroup = 68
            if (battlegroup == 3 || battlegroup == 2)
                global.battlegroup = 67
            if (battlegroup == 1)
                global.battlegroup = 60
            if (battlegroup == 0)
                global.battlegroup = 59
            if (FL_DisableRandomEncounters == true || FL_TruePacifist == true)
                instance_destroy()
            if (FL_CoreBattleProgressCounter2 == 0)
                global.battlegroup = 62
            if (FL_CoreBattleProgressCounter2 == 1)
                global.battlegroup = 64
            if (FL_CoreBattleProgressCounter2 == 2)
                global.battlegroup = 65
            if (FL_CoreBattleProgressCounter2 == 3)
                global.battlegroup = 66
            if (FL_CoreBattleProgressCounter2 == 4)
                global.battlegroup = 68
            FL_CoreBattleProgressCounter2 += 1
            if (alldead == 2)
                global.battlegroup = 19
            if (alldead == 1)
            {
                global.battlegroup = 19
                alldead = 2
                FL_CoreGenocide = 1
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
