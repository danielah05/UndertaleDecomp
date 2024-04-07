blcon = instance_create((x + 125), y, obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
if (mycommand < 20)
    global.msg[0] = scr_gettext("obj_wizard_281")
if (mycommand >= 20)
    global.msg[0] = scr_gettext("obj_wizard_283")
if (mycommand >= 40)
    global.msg[0] = scr_gettext("obj_wizard_285")
if (mycommand >= 60)
    global.msg[0] = scr_gettext("obj_wizard_287")
if (mycommand >= 80)
    global.msg[0] = scr_gettext("obj_wizard_289")
if (mercymod == 300)
{
    mercymod = 299
    global.msg[0] = scr_gettext("obj_wizard_294")
}
global.msg[1] = scr_gettext("obj_wizard_297")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 17
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
