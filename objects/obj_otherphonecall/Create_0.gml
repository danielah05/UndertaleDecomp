con = 0
if (FL_TruePacifist == true)
	instance_destroy()
if (FL_FunCallOccurred == 1)
	instance_destroy()
type = 0
if (FL_Fun >= 40 && FL_Fun <= 45)
	type = 1
if (FL_Fun > 45 && FL_Fun <= 50)
	type = 2
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
	type = choose(1, 2)
if (type == 0)
	instance_destroy()
if (global.plot >= 120)
	instance_destroy()
