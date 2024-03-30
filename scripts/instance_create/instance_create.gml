/// @func						instance_create(x, y, object_handle)
/// @desc						Creates an instance of a specified object at a specified position with a default depth
/// @param	{real}				x				The X position to create the instance at
/// @param	{real}				y				The Y position to create the instance at
/// @param	{Asset.GMObject}	object_handle	The object handle to create an instance of
/// @return	{Id.Instance}
function instance_create(_x, _y, _object_handle)
{
	var myDepth = object_get_depth(_object_handle)
	return instance_create_depth(_x, _y, myDepth, _object_handle);
}
