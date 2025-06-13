table = scr_marker(177, 115, spr_undynetable)
with (table)
	scr_depth()
piano = scr_marker(60, 100, spr_undyne_piano)
with (piano)
	scr_depth()
sword = scr_marker(obj_solidthin.x, (obj_solidthin.y - 34), spr_giantsword)
with (sword)
	scr_depth()
teacup = scr_marker(104, 57, spr_undteacup)
with (teacup)
	scr_depth()
con = 1
global.interact = 1
alarm[4] = 40
caster_free(all)
global.facing = Direction.Up
papyrus = instance_create(120, 140, obj_papyrus_actor)
papyrus.sprite_index = papyrus.usprite
papyrus.fun = true
papyrus.image_speed = 0
undyne = instance_create(140, 80, obj_undyne_actor)
undyne.sprite_index = undyne.dtsprite
con = 1
if (con == 104)
{
	global.currentsong = caster_load("music/undynetruetheme.ogg")
	caster_loop(global.currentsong, 0.9, 1)
	global.phasing = 1
	con = 104
	undyne.x = 208
	undyne.y = 10
	view_target_set(0, noone)
	obj_mainchara.cutscene = true
	obj_mainchara.x = 200
	obj_mainchara.y = 140
}
