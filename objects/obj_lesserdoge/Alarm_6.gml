blcon = instance_create(((x + sprite_width) - 8), (ystart + 8), obj_blconsm)
mycommand = round(random(100))
if (global.turn == 0)
	mycommand = 10
if (global.turn == 1)
	mycommand = 90
if (mycommand >= 0 && mycommand < 25)
	global.msg[0] = scr_gettext("obj_lesserdoge_204")
if (mycommand >= 25 && mycommand < 50)
	global.msg[0] = scr_gettext("obj_lesserdoge_205")
if (mycommand >= 50 && mycommand <= 75)
	global.msg[0] = scr_gettext("obj_lesserdoge_206")
if (mycommand >= 75 && mycommand <= 100)
	global.msg[0] = scr_gettext("obj_lesserdoge_207")
if (mercymod == 102)
{
	mercymod = 103
	global.msg[0] = scr_gettext("obj_lesserdoge_211")
}
if (mercymod > 10)
	global.monsterdef[myself] = -100
if (mercymod > 90)
	global.msg[0] = scr_gettext("obj_lesserdoge_214")
if (mercymod > 190)
	global.msg[0] = scr_gettext("obj_lesserdoge_215")
if (mercymod > 340)
	global.msg[0] = scr_gettext("obj_lesserdoge_216")
if (mercymod > 390)
	global.msg[0] = scr_gettext("obj_lesserdoge_217")
if (mercymod > 440)
	global.msg[0] = scr_gettext("obj_lesserdoge_218")
if (mercymod > 490)
	global.msg[0] = scr_gettext("obj_lesserdoge_219")
if (mercymod > 540)
	global.msg[0] = scr_gettext("obj_lesserdoge_220")
if (mercymod > 590)
	global.msg[0] = scr_gettext("obj_lesserdoge_221")
if (mercymod > 640)
	global.msg[0] = scr_gettext("obj_lesserdoge_222")
if (mercymod > 690)
	global.msg[0] = scr_gettext("obj_lesserdoge_223")
global.msg[1] = scr_gettext("obj_lesserdoge_224")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 6
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
