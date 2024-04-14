/// @func	scr_facechoice()
/// @desc	Picks face to use in dialog depending on global.facechoice.
function scr_facechoice()
{
	if (global.facechoice == 1)
	{
	    instance_create((writer.x - 33), (writer.y + 25), obj_face_torieltalk)
	    instance_create(0, 0, obj_torbody)
	}
	if (global.facechoice == 2)
	    instance_create((writer.x - 36), (writer.y + 25), obj_face_floweytalk)
	if (global.facechoice == 3)
	    instance_create((writer.x - 35), (writer.y + 25), obj_face_sans)
	if (global.facechoice == 4)
	{
	    if (global.language == "ja")
	        var face_x = (writer.writingxend + 30)
	    else
	        face_x = (writer.x - 35)
	    var face = instance_create(face_x, (writer.y + 25), obj_face_papyrus)
	    if (global.language == "ja")
	        face.image_xscale = -1
	}
	if (global.facechoice == 5)
	    instance_create((writer.x - 40), (writer.y + 25), obj_face_undyne)
	if (global.facechoice == 6)
	    instance_create((writer.x - 39), (writer.y + 25), obj_face_alphys)
	if (global.facechoice == 7)
	    instance_create((writer.x - 40), (writer.y + 20), obj_face_asgore)
	if (global.facechoice == 8)
	    instance_create((writer.x - 18), (writer.y + 45), obj_face_mettaton)
	if (global.facechoice == 9)
	    instance_create((writer.x - 30), (writer.y + 30), obj_face_asriel)
}
