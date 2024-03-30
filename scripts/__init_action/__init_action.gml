function __init_action()
{
	global.__part_syst = -1
	global.__part_emit = []
	global.__argument_relative = 0
	global.__part_type = []
	for (var i = 0; i <= 15; i++)
	{
	    global.__part_type[i] = -1
	    global.__part_emit[i] = -1
	}
}
