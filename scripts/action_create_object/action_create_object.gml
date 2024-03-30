/// @func						action_create_object(object_handle, x, y)
/// @desc						Creates an instace of a specified object at a specified position with a default depth
/// @deprecated
/// @param	{Asset.GMObject}	object_handle	The object handle to create an instance of
/// @param	{real}				x				The X position to create the instance at
/// @param	{real}				y				The Y position to create the instance at
function action_create_object(_object_handle, _x, _y)
{
	if (!object_exists(_object_handle))
	{
	    show_message(("creating instance for non-existent object" + string(id)))
	    return 0;
	}
	if global.__argument_relative
	    instance_create((x + _x), (y + _y), _object_handle)
	else
	    instance_create(_x, _y, _object_handle)
}
