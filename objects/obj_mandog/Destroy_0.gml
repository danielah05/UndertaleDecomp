if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    global.goldreward[3] += 30
if (mercymod > 80 && mercymod < 400)
    FL_DogCoupleStatus = DogStatus.SparedWithStick
if (killed == 1)
    FL_DogCoupleStatus = DogStatus.Killed
if (killed == 0)
    FL_SparedSpecific = 1
global.plot = 50
scr_monsterdefeat(0, 0, 0, 0, 0)
with (mypart1)
    instance_destroy()
with (mypart2)
    instance_destroy()
