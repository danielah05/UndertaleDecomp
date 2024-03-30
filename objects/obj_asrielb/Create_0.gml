scr_monstersetup()
image_speed = 0
instance_create(0, 0, obj_roundedge)
part1 = obj_asriel_body
mypart1 = instance_create(x, y, obj_asriel_body)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_vulkinhurt
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -99999999999999
sha = 0
shb = 0
image_xscale = 2
image_yscale = 2
turns = 0
FL_FightingAsriel = true
global.seriousbattle = true
global.hope = 0
hoped = 0
dreamed = 0
say = 0
FL_AnimationIndex = 0
turns = (FL_AsrielTurnCounter - 3)
if (turns < 0)
    turns = 0
trcon = 0
ht = 200
wd = 100
