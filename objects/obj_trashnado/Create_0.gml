siner1 = 0
siner2 = 120
siner3 = 240
siner4 = 0
siner5 = 120
sinerx = 0
for (i = 0; i < 3; i += 1)
{
	tspr1[i] = choose(spr_trash_paperball, spr_trash_dustorb)
	trash1[i] = instance_create(x, y, obj_npc_marker)
	if instance_exists(trash1[i])
	{
		trash1[i].sprite_index = tspr1[i]
		with (trash1[i])
			scr_depth()
	}
}
for (i = 0; i < 3; i += 1)
{
	tspr2[i] = choose(spr_trash_paperball, spr_trash_dustorb)
	trash2[i] = instance_create(x, y, obj_npc_marker)
	if instance_exists(trash2[i])
	{
		trash2[i].sprite_index = tspr2[i]
		with (trash2[i])
			scr_depth()
	}
}
for (i = 0; i < 3; i += 1)
{
	tspr3[i] = choose(spr_trash_paperball, spr_trash_dustorb, spr_trash_paperball, spr_notepaper)
	trash3[i] = instance_create(x, y, obj_npc_marker)
	if instance_exists(trash3[i])
	{
		trash3[i].sprite_index = tspr3[i]
		with (trash3[i])
			scr_depth()
	}
}
for (i = 0; i < 3; i += 1)
{
	tspr4[0] = choose(spr_trash_paperball)
	tspr4[1] = choose(spr_book)
	tspr4[2] = choose(spr_spaghettialone)
	trash4[i] = instance_create(x, y, obj_npc_marker)
	if instance_exists(trash4[i])
	{
		trash4[i].sprite_index = tspr4[i]
		with (trash4[i])
			scr_depth()
	}
}
for (i = 0; i < 3; i += 1)
{
	if (FL_GotSansRoomKey < 2)
	{
		tspr5[0] = choose(spr_trash_paperball)
		tspr5[1] = choose(spr_book)
		tspr5[2] = choose(spr_trash_takeout)
	}
	else
	{
		tspr5[0] = choose(spr_trash_paperball)
		tspr5[2] = choose(spr_trash_takeout)
		tspr5[1] = choose(spr_book, spr_trash_paperball, spr_book, spr_tobdog_sleep_trash)
	}
	trash5[i] = instance_create(x, y, obj_npc_marker)
	if instance_exists(trash5[i])
	{
		trash5[i].sprite_index = tspr5[i]
		with (trash5[i])
			image_speed = 0.2
		with (trash1[i])
			scr_depth()
	}
}
obj_npc_marker.visible = true
with (obj_npc_marker)
{
	if (depth < 100)
		depth = 100
}
