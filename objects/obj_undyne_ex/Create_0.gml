scr_monstersetup(0, 0, 0, 0, 0)
image_speed = 0
part1 = obj_undynex_body
mypart1 = instance_create(x, y, part1)
hurtanim = 0
hurtsound = snd_ehurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
image_speed = 0
mercymod = -9999999999
joketold = 0
sha = 0
siner = 0
with (obj_battlebg)
	instance_destroy()
green = 0
darkify = 0
con = 0
greenlock = 0
songplayed = 0
revert = 0
lesson = -5
order = 1
rating = 9
prevhp = global.hp
hitno = 0
damagecause = 0
borderspec = 0
ratingb = 0
defadjust = 0
died = 0
blconx = (x + 180)
blcony = (y + 10)
shakify = 0
uncancel = 0
hitfirst = 0
berserk = 0
mercied = 0
ht = 200
wd = 200
obj_heart.sprite_index = spr_heartgreen
obj_heart.movement = 3
orderb = 0
global.tempvalue[13] = 1
