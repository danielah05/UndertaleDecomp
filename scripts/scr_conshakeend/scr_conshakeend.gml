/// @func	scr_conshakeend()
/// @desc	Ends screen shake.
function scr_conshakeend()
{
	view_xview_set(0, conshakex)
	view_yview_set(0, conshakey)
	if instance_exists(obj_mainchara)
	    obj_mainchara.cutscene = false
}
