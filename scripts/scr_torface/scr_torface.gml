/// @func	scr_torface(msg_number, face_id)
/// @desc	Set Toriel dialog face icon.
/// @arg	{real}	msg_number	Message ID
/// @arg	{real}	face_id		Toriel Face ID
function scr_torface(_msg_number, _face_id)
{
	global.msg[_msg_number] = (("\\TS \\F0 \\E" + string(_face_id)) + " \\F1 \\TT %")
}
