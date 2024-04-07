myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* Hey^1, I haven't seen you&  around before./"
global.msg[1] = "* It's nice to meet new&  people^1, isn't it?/%%"
if (global.plot > 105)
    global.msg[0] = "* I..^1.&* I don't know you./%%"
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
