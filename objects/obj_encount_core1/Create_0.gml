if (FL_DisableRandomEncounters == true || FL_TruePacifist == true)
    instance_destroy()
FL_InBattle = true
alldead = 0
global.encounter = 0
factor = 240
desto = 0
if (FL_CoreBattleProgressCounter < 2 && FL_CoreBattleProgressCounter2 < 4)
    factor = 80
if (scr_murderlv() >= 12)
    factor = 70
scr_steps(factor, 50, 40, 205)
if (scr_enemynpc3() == true)
    instance_destroy()
