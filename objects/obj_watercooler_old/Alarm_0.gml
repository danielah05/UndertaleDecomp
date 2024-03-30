myinteract = 3
if (havewater == 0)
    global.msc = 625
else
    global.msc = 627
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* (Someone has meticulously&  cleaned all the slime off of&  this snail.)/%%"
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
