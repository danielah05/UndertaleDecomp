chair = 0
if (global.plot > 20 || global.plot < 19)
	chair = 1
if (chair == 0)
{
	dsprite = spr_chairiel
	usprite = spr_chairiel
	lsprite = spr_chairiel
	rsprite = spr_chairiel
	dtsprite = spr_chairiel
	utsprite = spr_chairiel
	ltsprite = spr_chairiel
	rtsprite = spr_chairiel
}
else
{
	dsprite = spr_chairempty
	usprite = spr_chairempty
	lsprite = spr_chairempty
	rsprite = spr_chairempty
	dtsprite = spr_chairempty
	utsprite = spr_chairempty
	ltsprite = spr_chairempty
	rtsprite = spr_chairempty
	sprite_index = spr_chairempty
}
myinteract = 0
facing = Direction.Right
direction = 180
talkedto = 0
if (room == room_asghouse2)
{
	dsprite = spr_chairiel_grey
	usprite = spr_chairiel_grey
	lsprite = spr_chairiel_grey
	rsprite = spr_chairiel_grey
	dtsprite = spr_chairiel_grey
	utsprite = spr_chairiel_grey
	ltsprite = spr_chairiel_grey
	rtsprite = spr_chairiel_grey
	sprite_index = spr_chairiel_grey
	chair = 9
}
