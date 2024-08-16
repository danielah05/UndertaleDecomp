/// @func						scr_roomname(room)
/// @desc						Returns the name of a given room
/// @param		{Asset.GMRoom}	room
/// @returns	{string}
function scr_roomname(_room)
{
	if (_room == room_xbox_engagement)
	    return scr_gettext("roomname_0");
	var roomid = room_get_name(_room)
	if (substr(roomid, 1, 5) == "room_")
	{
	    var roomname = scr_gettext(("roomname_" + substr(roomid, 6)))
	    if (roomname != "")
	        return roomname;
	}
	return " ";
}
