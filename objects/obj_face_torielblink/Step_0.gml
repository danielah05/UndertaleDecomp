if (image_index == 0)
{
	if instance_exists(OBJ_WRITER)
	{
		if (OBJ_WRITER.halt == 0)
			instance_change(obj_face_torieltalk, true)
	}
}
if (global.faceemotion == 0 && sprite_index != spr_face_torielhappyblink)
	sprite_index = spr_face_torielhappyblink
if (global.faceemotion == 1 && sprite_index != spr_face_torielblinkside)
	sprite_index = spr_face_torielblinkside
if (global.faceemotion == 2 && sprite_index != spr_face_torielblink)
	sprite_index = spr_face_torielblink
if (global.faceemotion == 3 && sprite_index != spr_face_torielwhat)
	sprite_index = spr_face_torielwhat
if (global.faceemotion == 4 && sprite_index != spr_face_torielwhatside)
	sprite_index = spr_face_torielwhatside
if (global.faceemotion == 5 && sprite_index != spr_face_torielrevenge)
	sprite_index = spr_face_torielrevenge
if (global.faceemotion == 6 && sprite_index != spr_face_torielcold)
	sprite_index = spr_face_torielcoldblink
if (global.faceemotion == 7 && sprite_index != spr_face_torielmad)
	sprite_index = spr_face_torielmadblink
if (global.faceemotion == 8 && sprite_index != spr_face_torielembarrassed)
	sprite_index = spr_face_torielembarrassed
if (global.faceemotion == 9 && sprite_index != spr_face_toriel_goawayasgore)
	sprite_index = spr_face_toriel_goawayasgore
