/// @fun	crash_method(ex)
/// @desc	This function is ONLY supposed to be called when a crash occurs
/// @arg	{struct}	ex	The exception struct
function crash_method(_ex)
{
	caster_stop(all);
	caster_free(all);
	
	snd_play_ex(sfx_decomp_crash, 99999, false);
	
	if (ossafe_file_exists("crash.log"))
		ossafe_file_delete("crash.log");
	crashFileHandle = ossafe_file_text_open_write("crash.log");
	
	
	var date_time = date_current_datetime();
	ossafe_file_text_write_string(crashFileHandle, $"--------------------------------------------------------------");
	ossafe_file_text_writeln(crashFileHandle);
	ossafe_file_text_write_string(crashFileHandle, $"An Unhandled Exception has occured!");
	ossafe_file_text_writeln(crashFileHandle);
	ossafe_file_text_write_string(crashFileHandle, $"--------------------------------------------------------------");
	ossafe_file_text_writeln(crashFileHandle);
	ossafe_file_text_write_string(crashFileHandle, $"Date-Time: {date_get_hour(date_time)}:{date_get_minute(date_time)}:{date_get_second(date_time)} ({date_get_timezone()}) - {date_get_day(date_time)}/{date_get_month(date_time)}/{date_get_year(date_time)}");
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