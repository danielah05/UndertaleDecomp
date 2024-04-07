/// @func						scr_roomname(room)
/// @desc						Returns the name of a given room
/// @param		{Asset.GMRoom}	room
/// @returns	{string}
function scr_roomname(_room)
{
	if (argument0 == room_start)
	    return scr_gettext("roomname_0");
	var roomid = room_get_name(argument0)
	if (substr(roomid, 1, 5) == "room_")
	{
	    var roomname = scr_gettext(("roomname_" + substr(roomid, 6)))
	    if (roomname != "")
	        return roomname;
	}
	return " ";
}
