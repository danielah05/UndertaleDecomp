function scr_conshake()
{
	consiner += 1
	view_xview_set(0, (conshakex + (sin(consiner) * argument0)))
	view_yview_set(0, (conshakey + (cos(consiner) * argument0)))
}
