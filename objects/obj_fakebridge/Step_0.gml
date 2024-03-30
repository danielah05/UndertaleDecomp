if (justdoit == 1 && global.interact == 0)
{
    alarm[3] = -1
    global.interact = 1
    caster_pause(global.currentsong)
    justdoit = 2
    alarm[4] = 20
    drawamt = 0
}
if (justdoit == 3)
{
    alarm[5] = 1
    justdoit = 4
}
if (justdoit == 6)
{
    justdoit = 7
    alarm[4] = 20
}
if (justdoit == 8)
{
    global.interact = 0
    justdoit = 9
    caster_resume(global.currentsong)
}
