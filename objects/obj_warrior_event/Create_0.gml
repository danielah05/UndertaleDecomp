con = 0
FL_AreaKillsPointer = KillsPointer_Hotland
if (FL_CoreWarriorsSwitchState == true)
    instance_destroy()
if (FL_DisableRandomEncounters == true || FL_TruePacifist == true)
    instance_destroy()
