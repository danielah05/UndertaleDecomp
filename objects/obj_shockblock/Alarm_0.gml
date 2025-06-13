obj_mainchara.x = memoryx
obj_mainchara.y = memoryy
if (obj_mainchara.y > 134 && obj_mainchara.x < 145)
	obj_mainchara.y = 134
shocking = 0
global.interact = 0
snd_stop(snd_shock)
