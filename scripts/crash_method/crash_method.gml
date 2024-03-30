/// @fun	crash_method(ex)
/// @desc	This function is ONLY supposed to be called when a crash occurs
/// @arg	{struct}	ex	The exception struct
function crash_method(_ex)
{
	caster_stop(all);
	caster_free(all);
	
	audio_play_sound(sfx_crash, 99999, false);
	
	if (ossafe_file_exists("crash.log"))
		ossafe_file_delete("crash.log");
	crashFileHandle = ossafe_file_text_open_write("crash.log");
	
	ossafe_file_text_write_string(crashFileHandle, $"--------------------------------------------------------------");
	ossafe_file_text_writeln(crashFileHandle);
	ossafe_file_text_write_string(crashFileHandle, $"An Unhandled Exception has occured!");
	ossafe_file_text_writeln(crashFileHandle);
	ossafe_file_text_write_string(crashFileHandle, $"--------------------------------------------------------------");
	ossafe_file_text_writeln(crashFileHandle);
	ossafe_file_text_write_string(crashFileHandle, $"Time: {date_current_datetime()}");
	ossafe_file_text_writeln(crashFileHandle);
	ossafe_file_text_write_string(crashFileHandle, $"Line {_ex.line} in script: \"{_ex.script}\"");
	ossafe_file_text_writeln(crashFileHandle);
	ossafe_file_text_write_string(crashFileHandle, $"--------------------------------------------------------------");
	ossafe_file_text_writeln(crashFileHandle);
	ossafe_file_text_write_string(crashFileHandle, _ex.message);
	ossafe_file_text_writeln(crashFileHandle);
	ossafe_file_text_write_string(crashFileHandle, $"StackTrace:");
	ossafe_file_text_writeln(crashFileHandle);

	for (var i = 0; i < array_length(_ex.stacktrace); i++)
	{
		ossafe_file_text_write_string(crashFileHandle, _ex.stacktrace[i]);
		ossafe_file_text_writeln(crashFileHandle);
	}
	
	ossafe_file_text_close(crashFileHandle);
	
	show_message("An unhandled exception has occured! A copy of it has been saved to your save directory.");
}