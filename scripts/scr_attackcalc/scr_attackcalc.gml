function scr_attackcalc()
{
	defarg = global.monsterdef[global.mytarget]
	global.pwr = (global.wstrength + global.at)
	damage = (global.pwr - defarg)
}
