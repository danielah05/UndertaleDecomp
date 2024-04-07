if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    global.goldreward[3] += 40
if (mercymod == 250)
    FL_GreaterDogStatus = DogStatus.SparedWithStick
if (killed == 1)
    FL_GreaterDogStatus = DogStatus.Killed
if (killed == 0)
    FL_SparedSpecific = 1
global.plot = 60
scr_monsterdefeat(0, 0, 0, 0, 0)
with (mypart1)
    instance_destroy()
