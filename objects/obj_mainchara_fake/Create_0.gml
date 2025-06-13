global.facing = Direction.Down
global.interact = 0
if ((x % 3) == 2)
	x += 1
if ((x % 3) == 1)
	x -= 1
if ((y % 3) == 2)
	y += 1
if ((y % 3) == 1)
	y -= 1
lastfacing = Direction.Down
nnn = 0
cutscene = false
oldx = x
oldy = y
image_speed = 0
global.phasing = 0
facing = global.facing
moving = false
movement = 1
dsprite = spr_f_maincharad
rsprite = spr_f_maincharar
usprite = spr_f_maincharau
lsprite = spr_f_maincharal
inwater = 0
