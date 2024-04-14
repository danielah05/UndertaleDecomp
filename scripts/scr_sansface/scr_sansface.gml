/// @func	scr_sansface(msg_number, face_id)
/// @desc	Set Sans dialog face icon.
/// @arg	{real}	msg_number	Message ID
/// @arg	{real}	face_id		Sans Face ID
function scr_sansface(_msg_number, _face_id)
{
	global.msg[_msg_number] = (("\\TS \\F0 \\E" + string(_face_id)) + " \\F3 \\Ts %")
}
