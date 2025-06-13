/// @func	scr_recover(hp)
/// @desc	Recovers HP
/// @arg	{real}	hp	HP to recover
function scr_recover(_hp)
{
	recovered = _hp
	maxedout = 0
	if (global.hp < global.maxhp)
		global.hp += _hp
	else
		maxedout = 1
	if (global.hp >= global.maxhp && maxedout == 0)
	{
		global.hp = global.maxhp
		maxedout = 1
	}
}
