image_speed = 0
moving = false
x1 = 101
y1 = 60
x2 = ((220 - sprite_width) - 1)
y2 = 115
caster_free(all)
beat = caster_load("music/coolbeat.ogg")
global.interact = 1
if instance_exists(obj_mainchara)
    obj_mainchara.visible = false
mc = instance_create(x, y, obj_npc_marker)
mc.sprite_index = spr_mainchara_lie_2
mc.depth = 500020
mc.visible = true
canmove = 0
playing = 0
con = 0
mclock = 1
alarm[3] = 30
GR = 0
