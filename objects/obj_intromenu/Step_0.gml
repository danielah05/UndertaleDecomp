if (naming == 1 || naming == 2)
    scr_namingscreen_check(charname)

// DECOMP CODE
if (control_check(MenuButton))
{
	caster_free(all);
	room_goto(room_decomp_settings);
}