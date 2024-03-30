ga = 0
if (powered == 2 && ga == 0)
{
    event_user(0)
    ga = 1
}
if (powered == 1 && ga == 0)
{
    event_user(2)
    ga = 1
}
if (powered == 0 && ga == 0)
{
    event_user(1)
    ga = 1
}
alarm[3] = 37
