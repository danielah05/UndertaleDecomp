scr_monstersetup()
image_speed = 0
part1 = obj_adate_body
mypart1 = instance_create(x, y, part1)
mypart1.pause = 0
with (mypart1)
    depth = 9
global.faceemotion = 13
alarm[9] = 8
hurtanim = 0
hurtsound = snd_vulkinhurt
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = 10
sha = 0
shb = 0
obj_heart.shot = 1
obj_heart.sprite_index = spr_heartyellow_flip
turns = 0
i = 0
repeat (99)
{
    global.failure[i] = 0
    i += 1
}
global.specialdam[0] = 0
global.specialdam[1] = 0
global.specialdam[2] = 0
mercyno = 0
talkt = 0
saved = 0
st = instance_create((x + 30), (y + 35), obj_strangetangle)
with (st)
    depth = 8
ht = 100
wd = 150
