scr_monstersetup(0, 0, 0, 0, 0)
hurtanim = 0
mercymod = 0
instance_create(x, y, obj_lesserdogetail)
instance_create(x, y, obj_lesserdogehead)
hurtsound = snd_damage
hurtsprite = spr_lesserdogehurt
normalsprite = sprite_index
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
outside = 0
image_speed = 0.1
ht = 200
wd = 100
