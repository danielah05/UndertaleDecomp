alldead = 0
global.encounter = 0
factor = 360
desto = 0
if (room == room_water6)
    factor = 110
if (room == room_water5)
    factor = 340
if (room == room_water5 && FL_WaterfallBattleProgressCounter1 == 0 && global.entrance == 1)
{
    factor = 20
    desto = 1
}
scr_steps(factor, 30, 18, 204)
if (FL_WaterfallKillsCounter == 0 && global.plot > 121)
    instance_destroy()
