sprite_index = u[global.faceemotion]
if (global.faceemotion == 1 && FL_UndyneExpression == UndyneExpression.TomatoFace)
	sprite_index = spr_face_undyne1_3
if (global.faceemotion == 2 && FL_AnimationIndex == 9)
	sprite_index = spr_face_undyne2_2
if (global.faceemotion == 9 && FL_UndyneExpression == UndyneExpression.SweatingFace)
	sprite_index = spr_face_undyne9_2
if (global.faceemotion == 9 && FL_UndyneExpression == UndyneExpression.TomatoFace)
	sprite_index = spr_face_undyne9_3
if instance_exists(OBJ_WRITER)
{
	if (OBJ_WRITER.halt != 0)
	{
		image_speed = 0
		image_index = 0
	}
	else
		image_speed = 0.25
}
if (global.facechoice == 0)
	instance_destroy()
