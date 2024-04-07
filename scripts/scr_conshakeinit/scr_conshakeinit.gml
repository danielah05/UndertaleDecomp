function scr_conshakeinit()
{
	conshakex = view_xview_get(0)
	conshakey = view_yview_get(0)
	consiner = 0
	if instance_exists(obj_mainchara)
	    obj_mainchara.cutscene = true
}
