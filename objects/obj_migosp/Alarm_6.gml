if ((((global.monster[0] + global.monster[1]) + global.monster[2]) - global.monster[myself]) == false)
	mercymod = 100
if (mercymod > 0)
{
	sprite_index = spr_migosphappy
	image_speed = 0.1
}
blcon = instance_create(((x + sprite_width) - 8), ystart, obj_blconsm)
mycommand = round(random(100))
if (mercymod < 0)
{
	if (mycommand >= 0 && mycommand < 20)
		global.msg[0] = scr_gettext("obj_migosp_227")
	if (mycommand >= 20 && mycommand < 40)
		global.msg[0] = scr_gettext("obj_migosp_228")
	if (mycommand >= 40 && mycommand < 60)
		global.msg[0] = scr_gettext("obj_migosp_229")
	if (mycommand >= 60 && mycommand <= 80)
		global.msg[0] = scr_gettext("obj_migosp_230")
	if (mycommand >= 80 && mycommand <= 100)
		global.msg[0] = scr_gettext("obj_migosp_231")
	if (whatiheard == 1 || whatiheard == 3)
		global.msg[0] = scr_gettext("obj_migosp_234")
}
if (mercymod > 0)
{
	if (mycommand >= 0 && mycommand < 20)
		global.msg[0] = scr_gettext("obj_migosp_239")
	if (mycommand >= 20 && mycommand < 40)
		global.msg[0] = scr_gettext("obj_migosp_240")
	if (mycommand >= 40 && mycommand < 60)
		global.msg[0] = scr_gettext("obj_migosp_241")
	if (mycommand >= 60 && mycommand <= 80)
		global.msg[0] = scr_gettext("obj_migosp_242")
	if (mycommand >= 80 && mycommand <= 100)
		global.msg[0] = scr_gettext("obj_migosp_243")
	if (whatiheard == 1 || whatiheard == 3)
		global.msg[0] = scr_gettext("obj_migosp_246")
}
global.msg[1] = scr_gettext("obj_migosp_251")
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 3
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
