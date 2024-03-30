legx = 0
legrot_r = 0
legrot_l = 0
bodyy = 0
con = 0
army = 0
siner = 0
leg = 0
timer = 0
active = false
main_timer = -70
bpants = instance_create(210, 35, obj_npc_marker)
bpants.sprite_index = spr_bpants_bush
bpants.image_speed = 0
bpants.visible = true
bpants.depth = 1010
dtable = instance_create(80, 60, obj_npc_marker)
dtable.sprite_index = spr_djtable
dtable.image_speed = 0.25
dtable.visible = true
dtable.depth = 1010
napsta = instance_create(98, 30, obj_npc_marker)
napsta.sprite_index = spr_napstablook_d_headphone
napsta.image_speed = 0.25
napsta.visible = true
napsta.depth = 1011
shyren = instance_create(70, 20, obj_npc_marker)
shyren.sprite_index = spr_shyren_overworld_sing
shyren.image_speed = 0.1
shyren.visible = true
shyren.depth = 1021
alarm[5] = 5
scr_loadendsong()
caster_stop(global.endsong[3])
caster_play(global.endsong[5], 1, 1)
global.inbattle = false
