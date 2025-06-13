slidedoorx = 0
on = 0
active = false
salad = instance_create(888, 80, obj_solidsmall)
if (FL_DatedAlphys >= 10 && FL_TruePacifist == false)
{
	active = true
	door = instance_create(salad.x, (salad.y - 4), obj_door_s_musfade)
	with (salad)
		instance_destroy()
	instance_create(890, 130, obj_readable_room5)
	pape = scr_marker(890, 130, spr_notepaper)
	pape.depth = 900000
}
o_noise = 0
c_noise = 0
s_noise = 0
