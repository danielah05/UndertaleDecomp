ttype = 0
yadd = 0
yadd2 = 3
yz2 = 0
if (ttype == 0 || ttype == 3)
{
	type = 0
	xmid = ((global.idealborder[0] + global.idealborder[1]) / 2)
	xlen = 100
	yamt = 3
	yspace = 40
	yno = 2
	yzero = (global.idealborder[2] + 30)
	alarm[9] = 1
	visible = false
	moving = false
	space = 0
	yadd2 = 3
}
if (ttype == 1)
{
	type = 0
	xmid = ((global.idealborder[0] + global.idealborder[1]) / 2)
	xlen = 100
	yamt = 7
	yspace = 40
	yno = 2
	yzero = 100
	alarm[9] = 1
	visible = false
	moving = false
	space = 0
	yadd = 3
}
yoff = 0
