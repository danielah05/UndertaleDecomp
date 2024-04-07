scr_depth(0, 0, 0, 0, 0)
scr_npc_anim()
if (w == 1)
{
    alarm[4] = 17
    w = 2
}
if (w == 3)
{
    w = 4
    alarm[4] = 36
}
if (w == 5)
{
    hspeed = -4
    w = 6
    alarm[4] = 20
}
if (w == 7)
{
    w = 8
    hspeed = 0
}
