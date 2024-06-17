/// @func	scr_alface(msg_number, face_id)
/// @desc	Set Alphys dialog face icon.
/// @arg	{real}	msg_number	Message ID
/// @arg	{real}	face_id		Alphys Face ID
function scr_alface(_msg_number, _face_id)
{
	global.msg[_msg_number] = (("\\TS \\F0 \\E" + string(_face_id)) + " \\F6 \\TA %")
}
