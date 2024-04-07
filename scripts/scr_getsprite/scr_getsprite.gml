/// @func	scr_getsprite(spriteHandle)
/// @desc	Gets a localized version of a sprite
/// @arg	{Asset.GMSprite OR Real}	spriteHandle
/// @return	{Asset.GMSprite}
function scr_getsprite(_spriteHandle)
{
	var sprite_id = _spriteHandle
	if (global.language == "ja")
	{
	    if (sprite_id == spr_actbt_center)
	        return spr_actbt_center_ja;
	    if (sprite_id == spr_actbt_center_hole)
	        return spr_actbt_center_hole_ja;
	    if (sprite_id == spr_barkbullet)
	        return spr_barkbullet_ja;
	    if (sprite_id == spr_barktry)
	        return spr_barktry_ja;
	    if (sprite_id == spr_bulletNapstaSad)
	        return spr_bulletNapstaSad_ja;
	    if (sprite_id == spr_cbone)
	        return spr_cbone_ja;
	    if (sprite_id == spr_dbone)
	        return spr_dbone_ja;
	    if (sprite_id == spr_defusebox)
	        return spr_defusebox_ja;
	    if (sprite_id == spr_fightbt)
	        return spr_fightbt_ja;
	    if (sprite_id == spr_fightbt_center)
	        return spr_fightbt_center_ja;
	    if (sprite_id == spr_fightbt_hollow)
	        return spr_fightbt_hollow_ja;
	    if (sprite_id == spr_itembt)
	        return spr_itembt_ja;
	    if (sprite_id == spr_itembt_hollow)
	        return spr_itembt_hollow_ja;
	    if (sprite_id == spr_killervisage)
	        return spr_killervisage_ja;
	    if (sprite_id == spr_librarysign)
	        return spr_librarysign_ja;
	    if (sprite_id == spr_mercybutton_normal)
	        return spr_mercybutton_normal_ja;
	    if (sprite_id == spr_mercybutton_shatter)
	        return spr_mercybutton_shatter_ja;
	    if (sprite_id == spr_mettatonb_behind)
	        return spr_mettatonb_behind_ja;
	    if (sprite_id == spr_mettatonb_behind_on)
	        return spr_mettatonb_behind_on_ja;
	    if (sprite_id == spr_oolbone)
	        return spr_oolbone_ja;
	    if (sprite_id == spr_out_to_lunch_sign)
	        return spr_out_to_lunch_sign_ja;
	    if (sprite_id == spr_punchcard)
	        return spr_punchcard_ja;
	    if (sprite_id == spr_pxquit)
	        return spr_pxquit_ja;
	    if (sprite_id == spr_savebt)
	        return spr_savebt_ja;
	    if (sprite_id == spr_snowsans)
	        return spr_snowsans_ja;
	    if (sprite_id == spr_sparebt)
	        return spr_sparebt_ja;
	    if (sprite_id == spr_sparebt_bandage)
	        return spr_sparebt_bandage_ja;
	    if (sprite_id == spr_starcheckeredit)
	        return spr_starcheckeredit_ja;
	    if (sprite_id == spr_talkbt)
	        return spr_talkbt_ja;
	    if (sprite_id == spr_talkbt_hollow)
	        return spr_talkbt_hollow_ja;
	    if (sprite_id == spr_udebone)
	        return spr_udebone_ja;
	    if (sprite_id == spr_wordsearch)
	        return spr_wordsearch_ja;
	}
	return sprite_id;
}
