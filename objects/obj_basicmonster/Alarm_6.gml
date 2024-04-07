blcon = instance_create((x + 100), y, obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = "Default"
if (mycommand < 75)
    global.msg[0] = "No 2"
if (mycommand < 50)
    global.msg[0] = "No 3"
if (mycommand < 25)
    global.msg[0] = "No 4"
if (whatiheard == 1)
    global.msg[0] = "Action1"
if (whatiheard == 3)
    global.msg[0] = "Action2"
if (whatiheard == 4)
    global.msg[0] = "Action3"
global.msg[1] = "%%%"
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 17
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
