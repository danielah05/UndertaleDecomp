tor = instance_create(188, 170, obj_npc_marker)
tor.sprite_index = spr_toriel_school
tor.image_speed = 0
tor.visible = true
asg = instance_create(240, 365, obj_npc_marker)
asg.sprite_index = spr_asgore_shears
asg.image_speed = 0.1
asg.visible = true
alarm[5] = 10
image_speed = 0.2
hspeed = 6
con = 0
timer = 0
x = -700
view_xview_set(0, -180)
td = 0
var text_x = 15
if (global.language == "ja")
    text_x = -2
t3 = instance_create(text_x, 140, obj_creditsword)
t3.text = scr_gettext("castroll_name_toriel")
if (global.language == "ja")
    t3.text_xofs = -3
t3.text2 = scr_gettext("castroll_by_toby")
scr_loadendsong()
caster_stop(global.endsong[5])
caster_stop(global.endsong[6])
caster_play(global.endsong[7], 1, 1)
vol = 0.9
global.inbattle = false
