alldead = 0
global.encounter = 0
if (global.entrance == 1)
	scr_steps(160, 30, 16, 203)
else
	scr_steps(300, 30, 16, 203)
if (FL_TundraKillsCounter == 0 && global.plot > 100)
	instance_destroy()
