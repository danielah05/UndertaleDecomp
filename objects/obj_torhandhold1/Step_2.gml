if (path_position == 1 && conversation == 0)
{
	with (obj_mainchara)
		path_end()
	path_end()
	global.phasing = 0
	obj_spiketile2.solid = 1
	obj_mainchara.visible = true
	tor = instance_create((x + 12), y, obj_toroverworld4)
	alarm[0] = 2
	with (tor)
		direction = 180
	with (tor)
		facing = Direction.Left
	visible = false
	conversation = 2
}
if (conversation == 3 && instance_exists(obj_dialoguer) == false)
{
	with (tor)
		path_start(path_walkright, 3, path_action_stop, 0)
	global.interact = 0
	instance_destroy()
	global.plot = 8
}
