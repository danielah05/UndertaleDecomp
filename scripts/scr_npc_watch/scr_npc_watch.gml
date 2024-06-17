/// @func	scr_npc_watch(talking)
/// @desc	Make NPC watch player.
/// @arg	{real}	_no_talk	Disable talking animation
function scr_npc_watch(_no_talk)
{
	if (_no_talk == 0)
	{
	    if instance_exists(obj_mainchara)
	    {
	        xdist = ((obj_mainchara.x + (obj_mainchara.sprite_width / 2)) - (x + (sprite_width / 2)))
	        ydist = (obj_mainchara.bbox_top - bbox_top)
	        if (abs(xdist) >= abs(ydist))
	        {
	            if (xdist >= 0)
	                sprite_index = rtsprite
	            else
	                sprite_index = ltsprite
	        }
	        else if (ydist >= 0)
	            sprite_index = dtsprite
	        else
	            sprite_index = utsprite
	    }
	}
	if (_no_talk == 1)
	{
	    if instance_exists(obj_mainchara)
	    {
	        xdist = ((obj_mainchara.x + (obj_mainchara.sprite_width / 2)) - (x + (sprite_width / 2)))
	        ydist = (obj_mainchara.bbox_top - bbox_top)
	        if (abs(xdist) >= abs(ydist))
	        {
	            if (xdist >= 0)
	                sprite_index = rsprite
	            else
	                sprite_index = lsprite
	        }
	        else if (ydist >= 0)
	            sprite_index = dsprite
	        else
	            sprite_index = usprite
	    }
	}
}
