blcon = instance_create((x + 165), (y + 55), obj_blconsm)
gg = floor(random(3))
mycommand = round(random(100))
if (mycommand >= 0 && mycommand < 25)
	global.msg[0] = "Hmph,&try not&to mess&this up."
if (mycommand >= 25)
	global.msg[0] = "I'll&take you&down&alone!"
if (mycommand >= 50)
	global.msg[0] = "Sigh...&team&attack,&I guess."
if (mycommand >= 75)
	global.msg[0] = "I'm a&one&woman&army."
if (shake == 1)
	global.msg[0] = "D...&Dude..."
if (whatiheard == 3)
{
	global.msg[0] = "What&are you&talking&about?"
	if (toldhim == 1)
		global.msg[0] = "My...&glove..."
}
if (whatiheard == 1)
{
	global.msg[0] = "Don't&touch&that!!"
	if (toldhim == 1)
		global.msg[0] = ",.."
}
if (whatiheard == 12)
	global.msg[0] = "H-HEY,&STOP&THAT!!"
pop = scr_monstersum()
if (pop < 2)
{
	if (mycommand >= 0 && mycommand < 25)
		global.msg[0] = "03!&I didn't&want&this..."
	if (mycommand >= 25)
		global.msg[0] = "03...&03..."
	if (mycommand >= 50)
		global.msg[0] = "03...&answer&me..."
	if (mycommand >= 75)
		global.msg[0] = "..."
	if (freshdeath == 0 && mercymod < 1)
		global.msg[0] = "03!&I never&said&sorry..."
	if (freshdeath == 0 && mercymod > 100)
		global.msg[0] = "03...!?&Why,&you..."
	freshdeath = 1
	mercymod = -99999
}
global.msg[1] = "%%%"
global.typer = 2
blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
global.border = 15
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
