scr_monstersetup(0, 0, 0, 0, 0)
image_speed = 0
with (obj_battlebg)
    instance_destroy()
part1 = obj_undynebody2
mypart1 = instance_create(x, y, part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_ehurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -9999
sha = 0
shb = 0
flex = 0
encourage = 0
criticize = 0
hug = 0
con = 0
blconx = (x + 150)
blcony = (y + 10)
global.faceemotion = 7
turnt = 0
ht = 150
wd = 150
