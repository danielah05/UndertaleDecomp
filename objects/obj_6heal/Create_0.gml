image_blend = c_lime
if instance_exists(obj_6soul_helpcutscene)
	depth = -14
image_alpha = 0
var hope_sprite = spr_6hope
if (global.language == "ja")
	hope_sprite = spr_6hope_ja
sprite_index = choose(spr_6bandage_big, spr_6pan_egg, spr_6gun_flower, spr_6shoe_musicnote, hope_sprite, spr_6thumbsup_small)
if (sprite_index != spr_6bandage_big)
{
	image_xscale = 2
	image_yscale = 2
}
image_speed = 0
image_angle = random(360)
vspeed = (2.5 + random(1))
