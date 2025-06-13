if (conversation == 1 && instance_exists(OBJ_WRITER) == false)
{
	global.interact = 3
	alarm[0] = 1
	conversation = 2
	instance_create(0, 0, obj_fader)
}
if (conversation == 3 && instance_exists(obj_torface))
	conversation = 3.5
if (conversation == 3.5 && instance_exists(obj_torface) == false)
{
	room_persistent = false
	global.specialbattle = 0
	obj_toroverworld1.direction = 90
	obj_toroverworld1.speed = 2
	alarm[3] = 15
	conversation = 4
}
if (conversation == 20 && instance_exists(OBJ_WRITER) == false)
{
	mus = instance_create(0, 0, obj_musfadeout)
	global.interact = 1
	visible = false
	flow = obj_floweytalker1
	with (flow)
		visible = false
	flow_m = scr_marker(flow.x, flow.y, spr_floweysink)
	with (flow_m)
		scr_depth()
	flow_m.image_speed = 0.25
	conversation = 21
}
if (conversation == 21 && instance_exists(OBJ_WRITER) == false)
{
	if (flow_m.image_index >= 5)
	{
		flow_m.visible = false
		conversation = 21.2
		alarm[4] = 50
	}
}
if (conversation == 22.2 && instance_exists(OBJ_WRITER) == false)
{
	global.plot = 1
	with (flow_m)
		instance_destroy()
	with (mus)
		instance_destroy()
	caster_free(global.currentsong)
	conversation = 23
}
if (conversation == 23)
{
	temptor = scr_marker(146, (view_yview_get(0) - 60), spr_toriel_d)
	temptor.image_speed = 0.25
	temptor.vspeed = 2
	global.currentsong = caster_load("music/toriel.ogg")
	caster_loop(global.currentsong, 0.7, 0.86)
	conversation = 24
}
if (conversation == 24)
{
	with (temptor)
		scr_depth()
	if (temptor.y >= 258)
	{
		faketor = 1
		temptor.image_index = 0
		temptor.speed = 0
		temptor.image_speed = 0
		conversation = 25
		alarm[2] = 30
	}
}
