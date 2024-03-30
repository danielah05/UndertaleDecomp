myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* We're about to visit Snowdin&  for the first time./"
global.msg[1] = "* You just came from there^1,&  right?/"
global.msg[2] = "* How is it...?/%%"
if (global.plot > 105)
    global.msg[0] = "* You should go back to&  Snowdin./%%"
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
