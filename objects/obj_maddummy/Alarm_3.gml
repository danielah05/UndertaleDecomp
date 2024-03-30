if (image_index != 1)
{
    image_index = 1
    with (mypart1)
    {
        event_user(0)
        mode = 99
    }
}
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
    snd_play(snd_damage)
    if (con > 1)
        global.hurtanim[myself] = 2
    else
    {
        global.hurtanim[myself] = 0
        con = 1
        alarm[7] = -1
        hurtsies = 0
        alarm[8] = 80
    }
    with (mypart1)
        event_user(0)
    return;
}
alarm[3] = 2
