scr_monstersetup()
with (obj_battlebg)
	instance_destroy()
x -= 40
image_speed = 0
part1 = obj_asgoreb_body
mypart1 = instance_create((x + 40), y, part1)
part2 = obj_asgorespear
mypart2 = instance_create(((x + 76) + 40), (y + 100), part2)
global.tempvalue[10] = 1
global.mercy = 2
obj_sparebt.visible = false
alarm[9] = 8
hurtanim = 0
hurtsound = snd_nosound
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = 10
sha = 0
shb = 0
myself = 0
turns = 0
turnoff = 0
dont = 0
ttttt = 0
talk_x = 0
ht = 240
wd = 300
