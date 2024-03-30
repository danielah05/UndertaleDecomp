snd_play(snd_hurt1)
if (instance_exists(obj_shaker) == false)
    instance_create(0, 0, obj_shaker)
if (hits == 0)
    global.hp = 1
if (hits == 1)
    global.hp = 1
if (hits == 2)
    global.hp = 0.9
if (hits == 3)
    global.hp = 0.5
if (hits == 4)
    global.hp = 0.1
if (hits == 5)
    global.hp = 0.01
if (hits == 6)
    FL_ToggleFinalBeam = 1
if (hits == 7)
    FL_ToggleFinalBeam = 2
if (hits == 8)
    FL_ToggleFinalBeam = 3
if (hits == 9)
    FL_ToggleFinalBeam = 4
hits += 1
alarm[5] = 40
