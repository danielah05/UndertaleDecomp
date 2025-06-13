obj_mainchara.cutscene = true
view_yview_set(0, 60)
cn = 0
active = false
ld = 0
if (global.plot < 110)
{
	undyne = instance_create(x, 14, obj_undynea_actor)
	undyne.dsprite = spr_undyne_starkd
	undyne.image_alpha = 0
	undyne.sprite_index = spr_undyne_starkd
	stk = instance_create(0, 0, obj_starker)
	stk.subject = undyne
	stk.sprite_index = spr_undyne_shad
	stk.image_alpha = 0
	active = true
	usong = caster_load("music/undynefast.ogg")
	ushock = caster_load("music/fearsting.ogg")
	ld = 1
}
stopper = 0
