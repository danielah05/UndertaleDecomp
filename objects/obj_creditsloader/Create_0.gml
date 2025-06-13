credno = 0
credamt = scr_loadcredits()
cy = 10
rounded = 0
memory = 0
st_t = 0
st_y = 500
st_f = 0
memswitch = 0
mytimer = 0
hitno = 0
hitname[0] = ""
songed = 0
active = false
drawbar = 0
global.inbattle = true
ting = 0
ossafe_ini_open("undertale.ini")
curf = ini_read_real("EndF", "EndF", 0)
ossafe_ini_close()
if (curf == 0)
{
	horror = caster_load("music/yourbestfriend_3.ogg")
	caster_loop(horror, 0.7, 1)
	asriel = instance_create(272, 16, obj_asriel_body)
	a_con = 1
	alarm[4] = 30
}
else
{
	a_con = 7
	a2 = id
}
do_room_goto = false
