if (hurtsies == 2)
{
    if (global.monsterhp[myself] >= 1)
    {
        global.hurtanim[myself] = 0
        image_index = 0
        global.myfight = 0
        global.mnfight = 1
    }
    else
    {
        global.myfight = 0
        global.mnfight = 1
        killed = 1
        instance_destroy()
    }
    hurtsies = 0
}
if (hurtsies == 1)
{
    snd_play(snd_damage)
    with (mypart1)
        event_user(1)
    hurtsies = 2
    alarm[7] = 25
    if (con == 2)
    {
        alarm[7] = -1
        alarm[8] = 30
    }
}
