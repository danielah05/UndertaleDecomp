scr_monstersetup()
image_speed = 0
part1 = obj_migospel_body
mypart1 = instance_create((x + 20), y, part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_ehurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -40
sha = 0
shb = 0
ht = 100
wd = 100
pop = scr_monstersum()
if (pop == 1)
{
    mercymod = 200
    if instance_exists(mypart1)
        mypart1.sad = 1
}
sad = 0
