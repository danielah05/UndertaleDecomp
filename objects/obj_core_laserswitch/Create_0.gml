myinteract = 0
con = 0
pcon = 0
if (global.plot > 180 || FL_TruePacifist == true)
{
	meswitch = scr_marker(x, y, spr_onoffswitch_on)
	with (meswitch)
		depth = 700000
	with (meswitch)
		image_speed = 0.2
	instance_destroy()
	return;
}
if (global.plot > 180)
{
	sprite_index = spr_onoffswitch_on
	con = 99
}
else
{
	ff = instance_create(280, 80, obj_kitchenforcefield)
	ff.image_yscale = 5
	ff.basic = 0
	pcon = 40
}
image_speed = 0.25
fader = 0
remhp = global.hp
if (room == room_fire_core4)
	depth = 700000
