function scr_onscreen()
{
	onscreen = false
	if (x > (view_xview_get(view_current) - argument0) && x < ((view_xview_get(view_current) + view_wview_get(view_current)) + argument0))
	{
	    if (y < ((view_hview_get(view_current) + view_yview_get(view_current)) + argument1) && y > (view_yview_get(view_current) - argument1))
	        onscreen = true
	}
}
