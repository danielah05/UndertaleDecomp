blcon = instance_create((x - blconx), (y + 55), obj_blconsm)
blcon.sprite_index = spr_blconsm2
gg = floor(random(3))
attacked = 0
mycommand = round(random(100))
if (mycommand >= 0 && mycommand < 25)
	global.msg[0] = "..."
if (mycommand >= 25)
	global.msg[0] = "..."
if (mycommand >= 50)
	global.msg[0] = "...&..."
if (mycommand >= 75)
	global.msg[0] = "..."
turn0 = 1
if (whatiheard == 3)
	global.msg[0] = "I know,&but..."
if (whatiheard == 1)
{
	global.msg[0] = "Glove...&getting&looser."
	if (shirtless == 1)
		global.msg[0] = "Nice&to meet&you???"
}
pop = scr_monstersum()
if (pop < 2)
{
	if (mycommand >= 0 && mycommand < 25)
		global.msg[0] = "..."
	if (mycommand >= 25)
		global.msg[0] = "..."
	if (mycommand >= 50)
		global.msg[0] = "..."
	if (mycommand >= 75)
		global.msg[0] = "..."
	if (freshdeath == 0 && mercymod < 1)
		global.msg[0] = "04...!!&Why&didn't&I..."
	if (freshdeath == 0 && mercymod > 100)
		global.msg[0] = "04!?&You...&YOU...!"
	freshdeath = 1
	mercymod = -99999
}
global.msg[1] = "%%%"
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 15
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
