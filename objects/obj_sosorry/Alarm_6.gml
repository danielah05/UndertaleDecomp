goodot = 0
global.msc = 0
if (prevhp == global.monsterhp[myself])
{
	goodot = 1
	if (p_mode == 0)
		myplot += 1
}
else
{
	goodot = 0
	hitplot += 1
}
prevhp = global.monsterhp[myself]
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_sosorry_269")
if (myplot == 5 && p_mode == 1 && goodot == 1)
{
	FL_AnimationIndex = 1
	global.msg[0] = scr_gettext("obj_sosorry_274")
}
if (hitplot == 1)
{
	global.msg[0] = scr_gettext("obj_sosorry_279")
	global.msg[1] = scr_gettext("obj_sosorry_280")
	global.msg[2] = scr_gettext("obj_sosorry_281")
	global.msg[3] = scr_gettext("obj_sosorry_282")
}
if (hitplot == 2)
{
	global.msg[0] = scr_gettext("obj_sosorry_287")
	global.msg[1] = scr_gettext("obj_sosorry_288")
	global.msg[2] = scr_gettext("obj_sosorry_289")
}
if (hitplot == 3)
{
	global.msg[0] = scr_gettext("obj_sosorry_294")
	global.msg[1] = scr_gettext("obj_sosorry_295")
	global.msg[2] = scr_gettext("obj_sosorry_296")
	global.msg[3] = scr_gettext("obj_sosorry_297")
	global.msg[4] = scr_gettext("obj_sosorry_298")
}
if (hitplot == 4)
{
	global.msg[0] = scr_gettext("obj_sosorry_303")
	global.msg[1] = scr_gettext("obj_sosorry_304")
	global.msg[2] = scr_gettext("obj_sosorry_305")
	global.msg[3] = scr_gettext("obj_sosorry_306")
	global.msg[4] = scr_gettext("obj_sosorry_307")
}
if (hitplot == 5)
{
	global.msg[0] = scr_gettext("obj_sosorry_312")
	global.msg[1] = scr_gettext("obj_sosorry_313")
	global.msg[2] = scr_gettext("obj_sosorry_314")
	global.msg[3] = scr_gettext("obj_sosorry_315")
	global.msg[4] = scr_gettext("obj_sosorry_316")
	global.msg[5] = scr_gettext("obj_sosorry_317")
	global.msg[6] = scr_gettext("obj_sosorry_318")
	global.msg[7] = scr_gettext("obj_sosorry_319")
	global.msg[8] = scr_gettext("obj_sosorry_320")
	global.msg[9] = scr_gettext("obj_sosorry_321")
	global.msg[10] = scr_gettext("obj_sosorry_322")
	global.msg[11] = scr_gettext("obj_sosorry_323")
}
if (hitplot == 6)
{
	global.msg[0] = scr_gettext("obj_sosorry_328")
	global.msg[1] = scr_gettext("obj_sosorry_329")
	global.msg[2] = scr_gettext("obj_sosorry_330")
}
if (hitplot == 7)
	global.msg[0] = scr_gettext("obj_sosorry_335")
if (hitplot == 8)
{
	global.msg[0] = scr_gettext("obj_sosorry_340")
	global.msg[1] = scr_gettext("obj_sosorry_341")
}
if (hitplot == 9)
{
	global.msg[0] = scr_gettext("obj_sosorry_346")
	global.msg[1] = scr_gettext("obj_sosorry_347")
	global.msg[2] = scr_gettext("obj_sosorry_348")
	global.msg[3] = scr_gettext("obj_sosorry_349")
	global.msg[4] = scr_gettext("obj_sosorry_350")
	global.msg[5] = scr_gettext("obj_sosorry_351")
	global.msg[6] = scr_gettext("obj_sosorry_352")
	global.msg[7] = scr_gettext("obj_sosorry_353")
	global.msg[8] = scr_gettext("obj_sosorry_354")
	global.msg[9] = scr_gettext("obj_sosorry_355")
	global.msg[10] = scr_gettext("obj_sosorry_356")
	global.msg[11] = scr_gettext("obj_sosorry_357")
	global.msg[12] = scr_gettext("obj_sosorry_358")
}
if (hitplot == 10)
{
	global.msg[0] = scr_gettext("obj_sosorry_363")
	global.msg[1] = scr_gettext("obj_sosorry_364")
	global.msg[2] = scr_gettext("obj_sosorry_365")
	global.msg[3] = scr_gettext("obj_sosorry_366")
	global.msg[4] = scr_gettext("obj_sosorry_367")
	global.msg[5] = scr_gettext("obj_sosorry_368")
	global.msg[6] = scr_gettext("obj_sosorry_369")
	global.msg[7] = scr_gettext("obj_sosorry_370")
}
if (hitplot == 11)
{
	with (obj_dmgwriter)
		instance_destroy()
	global.msg[0] = scr_gettext("obj_sosorry_376")
	global.msg[1] = scr_gettext("obj_sosorry_377")
	global.msg[2] = scr_gettext("obj_sosorry_378")
	global.msg[3] = scr_gettext("obj_sosorry_379")
	global.msg[4] = scr_gettext("obj_sosorry_380")
	d_con = 1
}
if (goodot == 1)
{
	if (myplot == 1)
	{
		global.msg[0] = scr_gettext("obj_sosorry_392")
		global.msg[1] = scr_gettext("obj_sosorry_393")
		global.msg[2] = scr_gettext("obj_sosorry_394")
		global.msg[3] = scr_gettext("obj_sosorry_395")
		global.msg[4] = scr_gettext("obj_sosorry_396")
		global.msg[5] = scr_gettext("obj_sosorry_397")
	}
	if (myplot == 2)
	{
		global.msg[0] = scr_gettext("obj_sosorry_402")
		global.msg[1] = scr_gettext("obj_sosorry_403")
		global.msg[2] = scr_gettext("obj_sosorry_404")
		global.msg[3] = scr_gettext("obj_sosorry_405")
		global.msg[4] = scr_gettext("obj_sosorry_406")
		global.msg[5] = scr_gettext("obj_sosorry_407")
	}
	if (myplot == 3)
	{
		FL_AnimationIndex = 0
		global.msg[0] = scr_gettext("obj_sosorry_413")
		global.msg[1] = scr_gettext("obj_sosorry_414")
		global.msg[2] = scr_gettext("obj_sosorry_415")
	}
	if (myplot == 4)
	{
		global.msg[0] = scr_gettext("obj_sosorry_420")
		global.msg[1] = scr_gettext("obj_sosorry_421")
		global.msg[2] = scr_gettext("obj_sosorry_422")
		global.msg[3] = scr_gettext("obj_sosorry_423")
	}
	if (myplot == 5 && p_mode == 1)
	{
		FL_AnimationIndex = 1
		global.msg[0] = scr_gettext("obj_sosorry_429")
	}
	if (myplot == 5 && p_mode == 0)
	{
		global.msg[0] = scr_gettext("obj_sosorry_434")
		global.msg[1] = scr_gettext("obj_sosorry_435")
		global.msg[2] = scr_gettext("obj_sosorry_436")
		global.msg[3] = scr_gettext("obj_sosorry_437")
		p_con = 1
		p_mode = 1
	}
	if (myplot == 6)
	{
		FL_AnimationIndex = 1
		global.msg[0] = scr_gettext("obj_sosorry_445")
		global.msg[1] = scr_gettext("obj_sosorry_446")
	}
	if (myplot == 7)
	{
		mercymod = 222
		FL_AnimationIndex = 3
		global.msg[0] = scr_gettext("obj_sosorry_453")
		global.msg[1] = scr_gettext("obj_sosorry_454")
		global.msg[2] = scr_gettext("obj_sosorry_455")
		global.msg[3] = scr_gettext("obj_sosorry_456")
		global.msg[4] = scr_gettext("obj_sosorry_457")
		global.msg[5] = scr_gettext("obj_sosorry_458")
		global.msg[6] = scr_gettext("obj_sosorry_459")
		global.msg[7] = scr_gettext("obj_sosorry_460")
		global.msg[8] = scr_gettext("obj_sosorry_461")
		global.msg[9] = scr_gettext("obj_sosorry_462")
		global.msg[10] = scr_gettext("obj_sosorry_463")
		global.msg[11] = scr_gettext("obj_sosorry_464")
		global.msg[12] = scr_gettext("obj_sosorry_465")
		global.msg[13] = scr_gettext("obj_sosorry_466")
		global.msg[14] = scr_gettext("obj_sosorry_467")
		global.msg[15] = scr_gettext("obj_sosorry_468")
		n_con = 1
	}
}
global.typer = 111
scr_blcon_x((x + 190), (y + 20))
blcon.depth = -1500
writer.depth = -1600
global.border = 17
if (p_mode == 0)
{
	if (myplot == 0 || myplot == 1 || myplot == 2 || myplot >= 5)
		global.border = 52
}
obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
talked = 2
