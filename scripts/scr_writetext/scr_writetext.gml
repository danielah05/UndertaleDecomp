/// @func				scr_writetext(msc, message, face_choice, typer)
/// @desc				TODO: THIS
/// @param	{real}		msc
/// @param	{string}	message
/// @param	{real}		face_choice
/// @param	{real}		typer
function scr_writetext(_msc, _message, _face_choice, _typer)
{
	global.facechoice = 0
	global.msc = _msc
	if (_message != "x")
		global.msg[0] = _message
	if (_face_choice != 0)
		global.facechoice = _face_choice
	if (global.inbattle == false)
	{
		global.typer = 5
		if (_typer != 0)
			global.typer = _typer
		instance_create(0, 0, obj_dialoguer)
	}
	if (global.inbattle == true)
	{
		with (OBJ_WRITER)
			halt = 3
		global.typer = 1
		if (_typer != 0)
			global.typer = _typer
		instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
	}
}
