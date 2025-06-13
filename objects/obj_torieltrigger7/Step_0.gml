if (conversation == 1 && instance_exists(obj_dialoguer) == false)
{
	conversation = 2
	with (obj_toroverworld3)
		x -= 10
	obj_toroverworld3.rsprite = spr_toriel_handhold_r
	obj_toroverworld3.usprite = spr_toriel_handhold_u
	obj_toroverworld3.sprite_index = spr_toriel_handhold_r
	obj_mainchara.visible = false
	with (obj_toroverworld3)
		path_start(path_torielwalk20_2, 2, path_action_stop, 0)
	with (obj_mainchara)
		path_start(path_torielwalk20_2, 2, path_action_stop, 0)
}
if (instance_exists(obj_toroverworld3) && conversation == 2)
{
	if (obj_toroverworld3.path_position == 1)
	{
		obj_toroverworld3.usprite = spr_toriel_u
		obj_toroverworld3.rsprite = spr_toriel_r
		obj_mainchara.x += 33
		alarm[2] = 1
		obj_toroverworld3.y -= 1
		obj_toroverworld3.facing = Direction.Up
		obj_toroverworld3.direction = 90
		global.facing = Direction.Up
		obj_mainchara.y -= 3
		global.msg[0] = scr_gettext("obj_torieltrigger7_243")
		instance_create(0, 0, obj_dialoguer)
		conversation = 3
	}
}
if (conversation == 3 && instance_exists(obj_dialoguer) == false)
{
	alarm[5] = 90
	with (obj_toroverworld3)
		visible = false
	ruff = scr_marker(obj_toroverworld3.x, obj_toroverworld3.y, spr_toriel_ruffle)
	ruff.image_speed = 0.1
	obj_mainchara.visible = false
	alarm[1] = 10
	conversation = 4
}
if (conversation == 5 && instance_exists(obj_dialoguer) == false)
{
	obj_toroverworld3.usprite = spr_toriel_u
	global.interact = 0
	conversation = 2
	with (obj_toroverworld3)
		path_start(path_torielwalk20, 6, path_action_stop, 0)
	global.plot = 19
	instance_destroy()
}
