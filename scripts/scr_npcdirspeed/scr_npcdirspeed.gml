/// @func	scr_npcdirspeed()
/// @desc	Set NPC facing direction... but with speed...? (Unused)
function scr_npcdirspeed()
{
	if (myinteract == 0)
	{
		if (vspeed > 0 && vspeed > abs(hspeed))
		{
			facing = Direction.Down
			sprite_index = dsprite
		}
		if (hspeed > 0 && hspeed > abs(vspeed))
		{
			facing = Direction.Right
			sprite_index = rsprite
		}
		if (vspeed < 0 && abs(vspeed) > abs(hspeed))
		{
			facing = Direction.Up
			sprite_index = usprite
		}
		if (hspeed < 0 && abs(hspeed) > abs(vspeed))
		{
			facing = Direction.Left
			sprite_index = lsprite
		}
	}
	if (myinteract == 1)
	{
		if (facing == Direction.Down)
			sprite_index = dtsprite
		if (facing == Direction.Right)
			sprite_index = rtsprite
		if (facing == Direction.Up)
			sprite_index = utsprite
		if (facing == Direction.Left)
			sprite_index = ltsprite
	}
}
