scr_depth(0, 0, 0, 0, 0)
if (FL_TruePacifist == true)
{
	if (FL_SMSConvoParameters <= FL_TorielSMSConvoCounter)
		FL_SMSConvoParameters = (FL_TorielSMSConvoCounter + 1)
}
if (FL_Hardmode == true && (!scr_hardmodename(global.charname)))
	FL_Hardmode = false
FL_PapyrusCalledAlready = 0
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
global.currentroom = room
if (global.interact == 3)
{
	if (global.entrance > 0)
	{
		global.interact = 0
		if (global.entrance == 1)
		{
			x = obj_markerA.x
			y = obj_markerA.y
		}
		if (global.entrance == 2)
		{
			x = obj_markerB.x
			y = obj_markerB.y
		}
		if (global.entrance == 4)
		{
			x = obj_markerC.x
			y = obj_markerC.y
		}
		if (global.entrance == 5)
		{
			x = obj_markerD.x
			y = obj_markerD.y
		}
		if (global.entrance == 18)
		{
			x = obj_markerr.x
			y = obj_markerr.y
		}
		if (global.entrance == 19)
		{
			x = obj_markers.x
			y = obj_markers.y
		}
		if (global.entrance == 20)
		{
			x = obj_markert.x
			y = obj_markert.y
		}
		if (global.entrance == 21)
		{
			x = obj_markeru.x
			y = obj_markeru.y
		}
		if (global.entrance == 22)
		{
			x = obj_markerv.x
			y = obj_markerv.y
		}
		if (global.entrance == 23)
		{
			x = obj_markerw.x
			y = obj_markerw.y
		}
		if (global.entrance == 24)
		{
			x = obj_markerX.x
			y = obj_markerX.y
		}
	}
}
dsprite = spr_maincharad
rsprite = spr_maincharar
usprite = spr_maincharau
lsprite = spr_maincharal
if (FL_HaveUmbrella == 1)
{
	dsprite = spr_maincharad_umbrella
	rsprite = spr_maincharar_umbrella
	usprite = spr_maincharau_umbrella
	lsprite = spr_maincharal_umbrella
}
if (global.facing == Direction.Down)
	sprite_index = dsprite
if (global.facing == Direction.Right)
	sprite_index = rsprite
if (global.facing == Direction.Up)
	sprite_index = usprite
if (global.facing == Direction.Left)
	sprite_index = lsprite
if (FL_CompletedTrueLab == 1)
	image_blend = merge_color(c_gray, c_white, 0.3)
inwater = 0
h_skip = 0
uncan = 0
m_override = 0
