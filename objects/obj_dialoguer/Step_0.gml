if (instance_exists(writer) == false)
	instance_destroy()
else if (control_check_pressed(CancelButton))
{
	if (writer.halt == 0)
	{
		if (global.typer != 10)
		{
			FL_DialoguesSkipped += 1
			writer.stringpos = string_length(writer.originalstring)
		}
	}
	control_clear(CancelButton)
}
if (global.facechange == 2)
	global.facechange = 0
if (global.facechange == 1 && global.facechoice == 0)
{
	if instance_exists(writer)
	{
		writer.x = (xx + 30)
		writer.writingx = writer.x
		writer.writingxend = writer.writingxend_base
	}
	if (instance_exists(obj_face) == true)
	{
		with (obj_face)
			instance_destroy()
	}
	global.facechange = 2
}
if (global.facechange == 1)
{
	if instance_exists(writer)
	{
		writer.x = (xx + 68)
		writer.writingx = (writer.x + 20)
		writer.writingxend = writer.writingxend_base
		if (global.facechoice == 1)
		{
			if ((!instance_exists(obj_face_torieltalk)) && (!instance_exists(obj_face_torielblink)))
				scr_facechoice()
		}
		if (global.facechoice == 2)
		{
			if (!instance_exists(obj_face_floweytalk))
				scr_facechoice()
		}
		if (global.facechoice == 3)
		{
			if (!instance_exists(obj_face_sans))
				scr_facechoice()
		}
		if (global.facechoice == 4)
		{
			if (global.language == "ja")
			{
				writer.x = (xx + 10)
				writer.writingx = (xx + 30)
				writer.writingxend = (writer.writingxend_base - 38)
			}
			if (!instance_exists(obj_face_papyrus))
				scr_facechoice()
		}
		if (global.facechoice == 5)
		{
			if (!instance_exists(obj_face_undyne))
				scr_facechoice()
		}
		if (global.facechoice == 6)
		{
			if (!instance_exists(obj_face_alphys))
				scr_facechoice()
		}
		if (global.facechoice == 7)
		{
			if (!instance_exists(obj_face_asgore))
				scr_facechoice()
		}
		if (global.facechoice == 8)
		{
			if (!instance_exists(obj_face_mettaton))
				scr_facechoice()
		}
		if (global.facechoice == 9)
		{
			if (!instance_exists(obj_face_asriel))
				scr_facechoice()
		}
		global.facechange = 2
	}
}
