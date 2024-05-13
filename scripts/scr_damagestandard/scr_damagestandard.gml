/// @func	scr_damagestandard(bullet_type, min_damage, max_damage, override_damage, unknown)
/// @desc	This script actually handles damaging the player
/// @param	{Constant.BulletType}	bullet_type			The type of bullet that is damaging the player
/// @param	{real}					min_damage			The minimum amount of damage that can be given
/// @param	{real}					max_damage			The maximum amount of damage that can be give
/// @param	{real}					override_damage		Forced amount of damage to give
/// @param	{real}					unknown				Dunno
function scr_damagestandard(_bullet_type, _min_damage, _max_damage, _damage_override, _arg4)
{
	if (_bullet_type != 3)
	{
	    check = true
	    if (_bullet_type == 1)
	    {
	        check = false
	        if (abs((obj_heart.xprevious - obj_heart.x)) > 0.01 || abs((obj_heart.yprevious - obj_heart.y)) > 0.01)
	            check = true
	    }
	    if (_bullet_type == 2)
	    {
	        check = false
	        if (abs((obj_heart.xprevious - obj_heart.x)) < 0.01 && abs((obj_heart.yprevious - obj_heart.y)) < 0.01)
	            check = true
	    }
	}
	puredmg = dmg
	if (global.hp > 20)
	    dmg += 1
	if (global.hp >= 30)
	    dmg += 1
	if (global.hp >= 40)
	    dmg += 1
	if (global.hp >= 50)
	    dmg += 1
	if (global.hp >= 60)
	    dmg += 1
	if (global.hp >= 70)
	    dmg += 1
	if (global.hp >= 80)
	    dmg += 1
	if (global.hp >= 90)
	    dmg += 1
	if (global.invc < 1 && check == true)
	{
	    dmgamt = round((dmg - ((global.df + global.adef) / 5)))
	    if (dmgamt < _min_damage)
	        dmgamt = _min_damage
	    if (_max_damage > 0 && dmgamt > _max_damage)
	        dmgamt = _max_damage
	    if (_damage_override > 0)
	        dmgamt = _damage_override
	    if (dmgamt < 1)
	        dmgamt = 1
	    global.hp -= dmgamt
	    if (global.hp < 0)
	        global.hp = 0
	    snd_play(snd_hurt1)
	    global.hshake = 2
	    global.shakespeed = 2
	    global.vshake = 2
	    instance_create(0, 0, obj_shaker)
	    global.invc = global.inv
	    if (_arg4 > 0)
	        global.invc = ((_arg4 / 20) * global.inv)
	    if (global.battlegroup == BattleGroup.Toriel)
	    {
	        if (global.hp < 1)
	            obj_torielboss.sprite_index = spr_torielboss_mouthcover
	    }
	}
	dmg = puredmg
}
