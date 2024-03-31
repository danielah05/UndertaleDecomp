/// @func	scr_hb_add(time, position, speed, type)
/// @desc	Adds a bullet to Mad Mew Mew's attack
/// @param	{real}						time		Override for when the next bullet should be sent
/// @param	{real}						position	The position of the bullet
/// @param	{real}						speed		The speed of the bullet
/// @param	{Constant.MewMewBulletType}	type		Type of bullet to use
function scr_hb_add(_time, _position, _speed, _type)
{
	bullettime[maxbullet] = _time;
	bulletpos[maxbullet] = _position;
	bulletspeed[maxbullet] = _speed;
	bullettype[maxbullet] = _type;
	maxbullet += 1
}