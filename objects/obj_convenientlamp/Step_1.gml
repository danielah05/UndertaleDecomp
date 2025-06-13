scr_depth(0, 0, 0, 0, 0)
if (global.plot <= 35)
	solid = 0
else
	solid = 1
if instance_exists(obj_mainchara_actor)
	depth = (obj_mainchara_actor.depth - 1)
