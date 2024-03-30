/// @func					scr_sp(type, speed, line, side, time)
/// @desc					Adds a bullet to Muffet attack
/// @param	{real}	type	The type of attack to use
/// @param	{real}	speed	The speed of the bullet
/// @param	{real}	line	The line to put the bullet on
/// @param	{real}	side	The side the attack will come from
/// @param	{real}	time	Override for when the next bullet should be sent
function scr_sp(_type, _speed, _line, _side, _time)
{
	btype[bmax] = _type
	bspeed[bmax] = _speed
	bchoice[bmax] = _line
	bside[bmax] = _side
	btime[bmax] = _time
	bmax += 1
}