if instance_exists(mypart1)
{
    if (mypart1.got == 1)
    {
        with (mypart1)
            pause = 1
        if (defuse == 0)
        {
            with (mypart1)
                defuse = 1
            snd_play(snd_damage)
            defuse = 1
            with (mypart1)
                shudder = 8
        }
    }
    if instance_exists(mypart1)
        mypart1.boss = myself
    with (mypart1)
    {
        if (sha == 0)
            sha = x
        x = (sha + shudder)
        if (shudder < 0)
            shudder = (-((shudder + 1)))
        else
            shudder = (-shudder)
        if (shudder == 0)
        {
            sha = 0
            global.hurtanim[boss] = 2
            return;
        }
    }
    if instance_exists(mypart1)
    {
        if (mypart1.shudder != 0)
            alarm[3] = 2
    }
}
