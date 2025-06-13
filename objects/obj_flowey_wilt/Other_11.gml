obj_borderparent.visible = false
writing = 1
if (con == 12)
{
	caster_free(wind)
	global.faceemotion = 0
	global.msc = 0
	global.typer = 70
	writing = 0
	global.msg[0] = scr_gettext("obj_flowey_wilt_470")
	instance_create((x - 50), (y - 40), OBJ_WRITER)
	con = 16
}
if (con == 11)
{
	caster_set_volume(wind, 0.25)
	global.faceemotion = 0
	global.msc = 0
	global.typer = 68
	global.msg[0] = scr_gettext("obj_flowey_wilt_481")
	instance_create((x - 50), (y - 40), OBJ_WRITER)
	con = 12
}
if (con == 10)
{
	caster_set_volume(wind, 0.5)
	global.faceemotion = 0
	global.msc = 0
	global.typer = 68
	global.msg[0] = scr_gettext("obj_flowey_wilt_492")
	instance_create((x - 50), (y - 40), OBJ_WRITER)
	con = 11
}
if (con == 9)
{
	global.faceemotion = 0
	global.msc = 0
	global.typer = 68
	global.msg[0] = scr_gettext("obj_flowey_wilt_503")
	global.msg[1] = scr_gettext("obj_flowey_wilt_504")
	instance_create((x - 60), (y - 50), OBJ_WRITER)
	con = 10
}
if (con == 8)
{
	global.faceemotion = 0
	global.msc = 0
	global.typer = 68
	global.msg[0] = scr_gettext("obj_flowey_wilt_514")
	instance_create((x - 20), (y - 30), OBJ_WRITER)
	con = 9
}
if (con == 7)
{
	global.faceemotion = 0
	global.msc = 0
	global.typer = 68
	global.msg[0] = scr_gettext("obj_flowey_wilt_524")
	instance_create((x - 20), (y - 30), OBJ_WRITER)
	con = 8
}
if (con == 6)
{
	global.faceemotion = 0
	global.msc = 0
	global.typer = 69
	global.msg[0] = scr_gettext("obj_flowey_wilt_534")
	instance_create((x - 20), (y - 30), OBJ_WRITER)
	con = 7
}
if (con == 5)
{
	global.faceemotion = 0
	global.msc = 0
	global.typer = 69
	global.msg[0] = scr_gettext("obj_flowey_wilt_545")
	instance_create((x - 50), (y - 40), OBJ_WRITER)
	con = 6
}
if (con == 4)
{
	global.faceemotion = 0
	global.msc = 0
	global.typer = 69
	global.msg[0] = scr_gettext("obj_flowey_wilt_556")
	instance_create((x - 50), (y - 40), OBJ_WRITER)
	con = 5
}
if (con == 3)
{
	FL_AnimationIndex = 0
	global.faceemotion = 0
	global.msc = 0
	global.typer = 69
	global.msg[0] = scr_gettext("obj_flowey_wilt_568")
	instance_create((x - 40), (y - 40), OBJ_WRITER)
	con = 4
}
if (con == 2)
{
	global.faceemotion = 0
	global.msc = 0
	global.typer = 69
	global.msg[0] = scr_gettext("obj_flowey_wilt_579")
	global.msg[1] = scr_gettext("obj_flowey_wilt_580")
	instance_create((x - 40), (y - 50), OBJ_WRITER)
	con = 3
}
if (con == 1)
{
	global.faceemotion = 0
	global.msc = 0
	global.typer = 68
	global.msg[0] = scr_gettext("obj_flowey_wilt_591")
	global.msg[1] = scr_gettext("obj_flowey_wilt_592")
	instance_create((x - 60), (y - 50), OBJ_WRITER)
	con = 2
}
if (con == 0)
{
	global.msc = 0
	global.typer = 68
	global.msg[0] = scr_gettext("obj_flowey_wilt_601")
	global.msg[1] = scr_gettext("obj_flowey_wilt_602")
	global.msg[2] = scr_gettext("obj_flowey_wilt_603")
	global.msg[3] = scr_gettext("obj_flowey_wilt_604")
	instance_create((x - 60), (y - 50), OBJ_WRITER)
	con = 1
}
