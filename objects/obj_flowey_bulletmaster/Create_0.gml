timer = 0
maxtimer = 754
if (global.battlephase == 1 || global.battlephase == 5)
    maxtimer = 678
soultimer = 0
soulmax = 460
active = false
attacktimer = 0
attacktimermax = 9999
attackno = 0
save_attackno = 0
attackid[0] = 7
attackid[1] = 7
attackid[2] = 7
alarm[0] = 1
phase_1 = 0
phase_s = 0
ourattack = 1287248374
overtype = 0
unhinged = 0
atimer = -1
if (global.battlephase == 0)
{
    with (obj_flowey_master)
    {
        fileset = 3
        savetimer = 20
    }
}
if (global.battlephase == 0 || global.battlephase == 3)
{
    with (obj_flowey_master)
        caster_play(mus_phase[0], 1, 1)
    atimer = (200 + floor(random(200)))
}
if (global.battlephase == 1 || global.battlephase == 5)
{
    with (obj_flowey_master)
        caster_play(mus_phase[1], 1, 1)
    atimer = (200 + floor(random(180)))
}
if (global.battlephase == 2 || global.battlephase == 4)
{
    maxtimer = 500
    overtype = 1
    with (obj_flowey_master)
    {
        mustype = 3
        caster_loop(mus_repeat1, 1, 1)
    }
}
if (global.battlephase == 6)
{
    alarm[8] = 150
    with (obj_floweybodyparent)
    {
        wimpy = 1
        desperate = 0
    }
    maxtimer = 9999999
    atimer = 160
    with (obj_flowey_master)
    {
        mustype = 4
        caster_play(mus_finale2, 1, 1)
    }
    alarm[6] = 1214
}
