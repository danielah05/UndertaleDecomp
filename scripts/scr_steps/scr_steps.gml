/// @func	scr_steps(base_steps, random_steps, population, area_kills_pointer)
/// @desc	Calculates when to start an encounter based on the rooms "base steps" and "random steps". Does extra math depending on how many monsters have been killed.
/// @param	{real}	base_steps			The base steps of the current room.
/// @param	{real}	random_steps		Random amount of steps that get added to the base steps.
/// @param	{real}	population			The population of monsters in the room.
/// @param	{real}	area_kills_pointer	The area kills pointer of the current room.
function scr_steps(_base_steps, _random_steps, _population, _area_kills_pointer)
{
	FL_AreaKillsPointer = _area_kills_pointer
	if ((_population - global.flag[_area_kills_pointer]) > 0)
	{
	    populationfactor = (_population / (_population - global.flag[_area_kills_pointer]))
	    if (populationfactor > 8)
	        populationfactor = 8
	    steps = ((_base_steps + round(random(_random_steps))) * populationfactor)
	}
	else
	{
	    if (alldead == 0 || alldead == 1)
	        steps = 20
	    else
	        steps = ((_base_steps + round((_random_steps / 2))) * 5)
	    if (alldead == 0)
	        alldead = 1
	}
}
