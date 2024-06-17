/// @func	scr_papface(msg_number, face_id)
/// @desc	Set Papyrus dialog face icon.
/// @arg	{real}	msg_number	Message ID
/// @arg	{real}	face_id		Papyrus Face ID
function scr_papface(_msg_number, _face_id)
{
	global.msg[_msg_number] = (("\\TS \\F0 \\E" + string(_face_id)) + " \\F4 \\TP %")
}
