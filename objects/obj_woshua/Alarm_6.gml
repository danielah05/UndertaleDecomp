blcon = instance_create((x + 95), (y - 25), obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
if (mycommand < 5)
    bodypart = scr_gettext("obj_woshua_247")
if (mycommand >= 5)
    bodypart = scr_gettext("obj_woshua_248")
if (mycommand >= 10)
    bodypart = scr_gettext("obj_woshua_249")
if (mycommand >= 15)
    bodypart = scr_gettext("obj_woshua_250")
if (mycommand >= 20)
    bodypart = scr_gettext("obj_woshua_251")
if (mycommand >= 0 && mycommand < 25)
    global.msg[0] = scr_gettext("obj_woshua_252", bodypart)
if (mycommand >= 25)
{
    global.msg[0] = scr_gettext("obj_woshua_254")
    if (global.kills > 0)
        global.msg[0] = scr_gettext("obj_woshua_255")
}
if (mycommand >= 50)
    global.msg[0] = scr_gettext("obj_woshua_256")
if (mycommand >= 75 && dub == 1)
    global.msg[0] = scr_gettext("obj_woshua_257")
if (mycommand >= 75 && dub == 0)
{
    global.msg[0] = scr_gettext("obj_woshua_258")
    dub = 1
}
if (whatiheard == 3)
    global.msg[0] = scr_gettext("obj_woshua_263")
if (whatiheard == 1)
{
    global.msg[0] = scr_gettext("obj_woshua_267")
    if (clean == 2)
        global.msg[0] = scr_gettext("obj_woshua_268")
}
if (whatiheard == 4)
    global.msg[0] = scr_gettext("obj_woshua_272")
global.msg[1] = scr_gettext("obj_woshua_276")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
blcontweet = instance_create(x, (y - 40), obj_blconsm)
blcontweet.sprite_index = spr_blcontinyabove
global.msc = 0
global.msg[0] = scr_gettext("obj_woshua_283")
global.typer = 25
blconwd2 = instance_create((blcontweet.x + 15), (blcontweet.y - 10), OBJ_INSTAWRITER)
blconwd2.shake = 1
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
