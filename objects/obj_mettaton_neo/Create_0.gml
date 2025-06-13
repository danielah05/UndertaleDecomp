scr_monstersetup()
image_speed = 0
part1 = obj_mneo_body
mypart1 = instance_create((x + 104), (y + 50), part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_nosound
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -999999
sha = 0
shb = 0
ht = 240
wd = 200
with (obj_battlebg)
	instance_destroy()
con = 0
