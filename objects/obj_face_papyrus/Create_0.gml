event_inherited()
image_speed = 0.25
if instance_exists(obj_face_sans)
{
	with (obj_face_sans)
		instance_destroy()
}
if instance_exists(obj_face_undyne)
{
	with (obj_face_undyne)
		instance_destroy()
}
if instance_exists(obj_face_alphys)
{
	with (obj_face_alphys)
		instance_destroy()
}
if instance_exists(obj_face_asgore)
{
	with (obj_face_asgore)
		instance_destroy()
}
if instance_exists(obj_face_torieltalk)
{
	with (obj_face_torieltalk)
		instance_destroy()
}
if instance_exists(obj_face_torielblink)
{
	with (obj_face_torielblink)
		instance_destroy()
}
if instance_exists(obj_torbody)
{
	with (obj_torbody)
		instance_destroy()
}
if instance_exists(obj_face_mettaton)
{
	with (obj_face_mettaton)
		instance_destroy()
}
if (global.faceemotion == 0 && sprite_index != spr_face_papyrus)
	sprite_index = spr_face_papyrus
if (global.faceemotion == 1 && sprite_index != spr_face_papyrusmad)
	sprite_index = spr_face_papyrusmad
if (global.faceemotion == 2 && sprite_index != spr_face_papyruslaugh)
	sprite_index = spr_face_papyruslaugh
if (global.faceemotion == 3 && sprite_index != spr_face_papyrusside)
	sprite_index = spr_face_papyrusside
if (global.faceemotion == 4 && sprite_index != spr_face_papyrusevil)
	sprite_index = spr_face_papyrusevil
if (global.faceemotion == 5 && sprite_index != spr_face_papyrusside)
	sprite_index = spr_face_papyrussweat
if (global.faceemotion == 6 && sprite_index != spr_face_papyrusdejected)
	sprite_index = spr_face_papyrusdejected
if (global.faceemotion == 7 && sprite_index != spr_face_papyruswacky)
	sprite_index = spr_face_papyruswacky
if (global.faceemotion == 8 && sprite_index != spr_face_papyruscry)
	sprite_index = spr_face_papyruscry
if (global.faceemotion == 9 && sprite_index != spr_face_papyruscool)
	sprite_index = spr_face_papyruscool
