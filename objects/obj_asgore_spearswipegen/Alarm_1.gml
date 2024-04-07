if (on == 0)
{
    event_user(1)
    on = 1
}
else
{
    event_user(2)
    on = 0
}
if (typeno < typeamt)
{
    alarm[1] = flashtimer
    caster_stop(flash)
    caster_play(flash, 0.5, 1.05)
}
else
{
    caster_stop(flash)
    caster_play(flash, 0.6, 0.8)
    alarm[2] = (flashtimer + 15)
}
typeno += 1
