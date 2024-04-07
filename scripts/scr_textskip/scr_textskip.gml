/// @func	scr_textskip()
/// @desc	This function checks if text can skipped and if the cancel button is held down
function scr_textskip()
{
	if instance_exists(OBJ_WRITER)
	{
	    if (control_check_pressed(CancelButton))
	    {
	        with (OBJ_WRITER)
	            stringpos = string_length(originalstring)
	        control_clear(CancelButton)
	    }
	}
}
