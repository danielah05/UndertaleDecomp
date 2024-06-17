function SCR_LASER(_direction, _directionalSpeed, _twdsX, _twdsY, _owngravity, _owngravity_direction, _friction, _twdsXspeed, _twdsYspeed, _appearance)
{
	global.bulletvariable[0] = _direction
	global.bulletvariable[1] = _directionalSpeed
	global.bulletvariable[2] = _twdsX
	global.bulletvariable[3] = _twdsY
	global.bulletvariable[4] = _owngravity
	global.bulletvariable[5] = _owngravity_direction
	global.bulletvariable[6] = _friction
	global.bulletvariable[7] = _twdsXspeed
	global.bulletvariable[8] = _twdsYspeed
	global.bulletappearance = _appearance
	instance_create(x, y, blt_laser)
}
