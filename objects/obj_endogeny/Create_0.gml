with (obj_battlebg)
    instance_destroy()
scr_monstersetup()
image_speed = 0
part1 = obj_endogeny_body
mypart1 = instance_create(x, y, part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_nosound
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -25
dogignore = 0
close = 0
pet = 0
sha = 0
shb = 0
mycommand = 90
turns = 0
dogsong = caster_load("music/dogsong.ogg")
ht = 150
wd = 300
