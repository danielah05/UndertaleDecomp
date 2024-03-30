function scr_npcdir()
{
	if (myinteract == 0)
	{
	    if (direction >= 225 && direction < 315)
	    {
	        facing = Direction.Down
	        sprite_index = dsprite
	    }
	    if (direction >= 315 || direction < 45)
	    {
	        facing = Direction.Right
	        sprite_index = rsprite
	    }
	    if (direction >= 45 && direction < 135)
	    {
	        facing = Direction.Up
	        sprite_index = usprite
	    }
	    if (direction >= 135 && direction < 225)
	    {
	        facing = Direction.Left
	        sprite_index = lsprite
	    }
	}
	if (myinteract == (1 + argument0))
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
