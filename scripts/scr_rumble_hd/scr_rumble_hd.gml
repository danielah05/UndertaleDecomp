/// @func			scr_rumble_hd(_low_amp, _low_freq, _high_amp, _high_freq)
/// @desc			Script to set Switch Controller vibrations.
/// @param	{real}	low_amp		The low amplitude
/// @param	{real}	low_freq	The low frequency
/// @param	{real}	high_amp	The high amplitude
/// @param	{real}	high_freq	The high frequency
function scr_rumble_hd(_low_amp, _low_freq, _high_amp, _high_freq)
{
	var low_amp = _low_amp
	var low_freq = _low_freq
	var high_amp = _high_amp
	var high_freq = _high_freq
	if (os_type == os_switch)
	{
	    if switch_controller_vibration_permitted()
	    {
	        switch_controller_vibrate_hd((obj_time.j_ch - 1), 0, low_amp, low_freq, high_amp, high_freq)
	        switch_controller_vibrate_hd((obj_time.j_ch - 1), 1, low_amp, low_freq, high_amp, high_freq)
	    }
	}
}
