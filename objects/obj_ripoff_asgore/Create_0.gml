scr_monstersetup()
image_speed = 0
part1 = obj_sadgore
mypart1 = instance_create(x, y, part1)
mypart1.pause = 0
mypart1.face = 12
with (mypart1)
	depth = 9
alarm[9] = 8
hurtanim = 0
hurtsound = snd_vulkinhurt
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -999999
sha = 0
shb = 0
talkt = 0
totalmercy = 0
mercyno = 0
st = instance_create((x + 160), (y + 25), obj_strangetangle)
ht = 180
wd = 300
