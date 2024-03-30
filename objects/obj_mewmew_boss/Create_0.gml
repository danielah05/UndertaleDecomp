scr_monstersetup(0, 0, 0, 0, 0)
hurtanim = 0
hurtsound = snd_damage
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
outside = 0
image_xscale = 2
image_yscale = 2
mercymod = -400
image_speed = 0
depth = 15
with (obj_battlebg)
    instance_destroy()
ht = sprite_height
wd = sprite_width
mercer = 0
body = instance_create(x, y, obj_mewmew_body)
pattern = 0
turns = 0
hbul_turns = 0
true_battle = 0
with (obj_borderparent)
    visible = false
bordercon = 0
bx1[0] = 32
by1[0] = 250
bx2[0] = 602
by2[0] = 385
bx1[1] = 240
by1[1] = 275
bx2[1] = 395
by2[1] = 335
border = 0
idealborder = 0
cbx1 = 32
cby1 = 250
cbx2 = 602
cby2 = 385
hit_count = 0
true_count = 0
true_con = 0
true_timer = 0
heart_hurt_count = 0
heart_hurt_previous = 0
heart_hurt_msg_con = 0
prev_hit = 0
prev_pet = 0
if (global.tempvalue[14] == 1)
    event_user(3)
FL_FightingAsriel = 0
