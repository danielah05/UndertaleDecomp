/// @func	obj_writer_set_halt(halt)
/// @desc	Sets half if an obj_writer instance exists
/// @param	{real}	halt	The value to set halt to
// Daniela: decomp code
function obj_writer_set_halt(_halt)
{
	if (instance_exists(OBJ_WRITER))
		OBJ_WRITER.halt = _halt;	
}
