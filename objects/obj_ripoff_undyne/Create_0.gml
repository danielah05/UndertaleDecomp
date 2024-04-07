scr_monstersetup()
image_speed = 0
part1 = obj_undynebody2
alarm[10] = 2
global.faceemotion = 10
mypart1 = instance_create(x, y, part1)
mypart1.depth = 15
mypart1.noanim = 1
mypart1.spearalpha = 0
mypart1.goof = 0
with (mypart1)
    pause = 0
with (obj_battlebg)
    instance_destroy()
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
lesson = 15
if (obj_heart.sprite_index == spr_heart)
{
    obj_heart.sprite_index = spr_heartgreen
    obj_heart.movement = 3
    green = 0
}
darkify = 0
greenlock = 0
rating = 12
hitno = 0
berserk = 0
turns = 0
mercyno = 0
talkt = 0
saved = 0
st = instance_create((x + 20), (y - 30), obj_strangetangle)
with (st)
    depth = 14
ht = 200
wd = 100
