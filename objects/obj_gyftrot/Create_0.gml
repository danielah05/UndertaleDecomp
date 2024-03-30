scr_monstersetup(0, 0, 0, 0, 0)
image_speed = 0
with (obj_battlebg)
    instance_destroy()
part1 = obj_gyftrothead
part2 = obj_gyftrotbody
part3 = obj_gyftrotgift
mypart1 = instance_create(x, y, part1)
mypart2 = instance_create(x, y, part2)
hurtanim = 0
hurtsound = snd_ehurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -5
itemgone = 0
gift[0] = floor(random(7))
gift[1] = floor(random(7))
gift[2] = floor(random(7))
if (gift[1] == gift[0])
    gift[1] += 1
if (gift[2] == gift[0])
    gift[2] += 1
if (gift[2] == gift[1])
    gift[2] = 0
if (gift[2] == gift[0])
    gift[2] += 1
mypart3 = instance_create(x, y, part3)
mypart3.gift = gift[0]
mypart4 = instance_create(x, y, part3)
mypart4.gift = gift[1]
mypart8 = instance_create(x, y, part3)
mypart8.gift = gift[2]
googly = 0
giftgiven = 0
betray = 0
ung = 0
ht = 200
wd = 200
