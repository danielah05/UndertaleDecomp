blcon = instance_create((x + 100), y, obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_ripoff_undyne_287")
if (talkt == 0)
    global.msg[0] = scr_gettext("obj_ripoff_undyne_288")
if (talkt == 1)
    global.msg[0] = scr_gettext("obj_ripoff_undyne_289")
if (talkt == 2)
    global.msg[0] = scr_gettext("obj_ripoff_undyne_290")
if (talkt == 2)
    talkt = 0
if (talkt == 1)
    talkt = 2
if (talkt == 0)
    talkt = 1
global.msg[1] = scr_gettext("obj_ripoff_undyne_322")
global.typer = 39
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 17
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
if (obj_heart.sprite_index == spr_heartgreen)
{
    global.border = 13
    obj_heart.x = ((room_width / 2) - 8)
    obj_heart.y = (obj_uborder.y + 34)
    greenlock = 1
}
