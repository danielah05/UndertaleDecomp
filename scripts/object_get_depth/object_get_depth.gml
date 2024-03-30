/// @func						object_get_depth(object_handle)
/// @desc						Gets the default depth of a specified object
/// @param	{Asset.GMObject}	object_handle	The object handle to get the default depth of
/// @returns	{real}
function object_get_depth(_object_handle)
{
	var objID = _object_handle
	var ret = 0
	/* if (objID >= 0 && objID < array_length(global.__objectID2Depth))
	    ret = global.__objectID2Depth[objID] */
		
	if (objID >= 0 && objID < array_length(global.__objectDepths))
		ret = global.__objectDepths[objID];
	return ret;
}
