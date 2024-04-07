global.transtype += 1
instance_create(0, 0, obj_transheart_fake)
hearts += 1
if (hearts < 6)
    alarm[5] = 8
else
    alarm[7] = 20
