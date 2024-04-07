/// @func	scr_sr(spear_dir, spear_type, time_mod, speed_mod)
/// @arg	{real}	spear_dir
/// @arg	{real}	spear_type
/// @arg	{real}	time_mod
/// @arg	{real}	speed_mod
function scr_sr(_spear_dir, _spear_type, _time_mod, _speed_mod)
{
	if instance_exists(obj_greenspeargen)
	{
		// Vultu: I don't think this OG code is correct I don't think
		// new gamemaker supports you setting arguments directly
	    /* if (argument0 == 4)
	        argument0 = floor(random(4))
	    if (argument1 == 3)
	        argument1 = floor(random(2))
	    if (argument2 == 0 && argument1 != 2)
	        argument2 = 1
	    if (argument3 == 0)
	        argument3 = 1 */
			
		var __arg0 = _spear_dir;
		var __arg1 = _spear_type;
		var __arg2 = _time_mod;
		var __arg3 = _speed_mod;
		
		if (__arg0 == 4)
	        __arg0 = floor(random(4))
	    if (__arg1 == 3)
	        __arg1 = floor(random(2))
	    if (__arg2 == 0 && __arg1 != 2)
	        __arg2 = 1
	    if (__arg3 == 0)
	        __arg3 = 1
			
	    obj_greenspeargen.spearmax += 1
	    obj_greenspeargen.speardir[i] = __arg0
	    obj_greenspeargen.speartype[i] = __arg1
	    obj_greenspeargen.timemod[i] = __arg2
	    obj_greenspeargen.speedmod[i] = __arg3
	    i += 1
	}
}
