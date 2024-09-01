alldead = 0
global.encounter = 0
scr_steps(360, 30, 18, 204)
if (scr_murderlv() >= MurderLevel.Lv10GladDummyKilled && FL_SparedSpecific == 0)
    scr_steps(60, 20, 18, 204)
if (FL_WaterfallKillsCounter == 0 && global.plot > 121)
    instance_destroy()
