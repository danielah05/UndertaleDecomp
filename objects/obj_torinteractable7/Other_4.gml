ex = 0
if (global.plot != 25)
	ex = 1
if (FL_TorielStatus == TorielStatus.Killed)
	ex = 1
if (FL_TruePacifist == true)
	ex = 0
if (ex == 1)
	instance_destroy()
