side = 0
image_blend = c_aqua
image_speed = 0
depth = -20
x = 314
y = 300
for (i = 0; i < 5; i += 1)
{
	xpos[i] = x
	ypos[i] = y
	peg_alpha[i] = 0
}
xpos[0] = (x - 50)
xpos[2] = (x + 50)
ypos[3] = (y - 50)
ypos[4] = (y + 50)
curpos = 1
nextpos = 1
moving = false
vertical_ok = 0
movespeed = 10
box_index = 0
border_draw = 0
dmg = 10
