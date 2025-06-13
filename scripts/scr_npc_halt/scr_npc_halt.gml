/// @func	scr_npc_halt(direction)
/// @desc	Freeze and Set NPC facing direction
/// @arg	{real}	direction	NPC facing direction
function scr_npc_halt(_direction)
{
	image_index = 0
	image_speed = 0
	hspeed = 0
	vspeed = 0
	npcdir = 0
	if (_direction == "u")
		sprite_index = usprite
	if (_direction == "d")
		sprite_index = dsprite
	if (_direction == "l")
		sprite_index = lsprite
	if (_direction == "r")
		sprite_index = rsprite
}
