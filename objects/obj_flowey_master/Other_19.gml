loadtimer = 25
fileset = 3
global.my_hp = 50
if (destroyer < 28)
	obj_vsflowey_heart.move = 1
else
	obj_vsflowey_heart.move = 0
alarm[9] = 3
destroyer += 1
if (destroyer > 3)
{
	flx = (0 + random(320))
	fly = (0 - random(60))
}
obj_vsflowey_heart.depth = (depth - 1)
obj_vsflowey_heart.x = 314
obj_vsflowey_heart.y = 422
obj_vsflowey_heart.special = true
obj_vsflowey_heart.sprite_index = spr_ourheart
caster_stop(all)
caster_play(mus_hit, 1, 1)
with (obj_floweybodyparent)
{
	siner = 0
	image_index = 0
}
with (obj_floweybullet_parent)
	instance_destroy()
if (o_kill == 0)
	o_kill = 1
else
	o_kill = 0
if (o_kill == 0)
{
	with (obj_floweyx_mouth)
	{
		laugh = 0
		mode = 0
		rotbonus = 0
		xbonus = 0
		ybonus = 0
	}
	obj_floweyx_flipeye.md = 0
	obj_floweyx_flipeye.con = 0
	repeat (30)
	{
		m = instance_create((110 + random(400)), 200, obj_gigavine)
		with (m)
		{
			visible = true
			image_xscale = 1
			image_yscale = 1
			image_alpha = 1
			depth = 12
			xx = (obj_vsflowey_heart.x + 8)
			yy = (obj_vsflowey_heart.y + 8)
			direction = point_direction(x, y, xx, yy)
			image_angle = direction
		}
	}
}
else
{
	with (obj_floweyx_mouth)
	{
		laugh = 1
		mode = 2
		b = instance_create(271, 214, obj_mouthbeam)
		b.depth = (depth + 1)
		rotbonus = 15
		xbonus = -4
		ybonus = 6
	}
}
