with (obj_shop3)
{
	if (instance_exists(cattywriter) && obj_shopkeeper_catty.face == 0)
	{
		if (cattywriter.halt == 0)
			obj_shopkeeper_catty.banim += 0.334
		else
			obj_shopkeeper_catty.banim = 0
	}
	else
		obj_shopkeeper_catty.banim = 0
}
draw_sprite(sprite_index, banim, (x + floor(bxx)), (y + floor(byy)))
if (face > 0)
	draw_sprite(spr_cattyface, face, ((x + 34) + floor(bxx)), ((y + 17) + floor(byy)))
armexp = global.faceemotion
if (armexp == 0)
{
	face = 0
	idealarmx1 = (x + 60)
	idealarmy1 = 130
	idealarmx2 = (x + 40)
	idealarmy2 = 130
	yadjust = 10
	xadjust = 2
	if (abs(xx) > 0.1)
		xx /= 1.5
	if (abs(yy) > 0.1)
		yy /= 1.5
	if (abs(xx) < 0.1 && abs(yy) < 0.1)
		armsiner = 0
	if (abs(bxx) > 0.1)
		bxx /= 1.5
	if (abs(byy) > 0.1)
		byy /= 1.5
}
if (armexp == 1)
{
	face = 1
	arm = 1
	idealarmx1 = (x + 57)
	idealarmy1 = (y + 50)
	idealarmy2 = (y + 50)
	idealarmx2 = (x + 50)
	armsiner += 1
	byy = (sin(armsiner) * 1.5)
	yy = (cos(armsiner) * 1.5)
}
if (armexp == 2)
{
	face = 6
	arm = 1
	idealarmx1 = (x + 60)
	idealarmy1 = (y + 50)
	idealarmx2 = (x + 50)
	idealarmy2 = (y + 50)
	armsiner += 1
	xx = (sin((armsiner / 3)) * 5)
	yy = abs((sin((armsiner / 3)) * 4))
	bxx = ((-(sin((armsiner / 3)))) * 3)
}
if (armexp == 3)
{
	face = 0
	arm = 0
	yadjust = 5
	idealarmx1 = (x + 70)
	idealarmy1 = (y + 60)
	idealarmx2 = (x + 40)
	idealarmy2 = (y + 60)
	armsiner += 1
	xx = (sin((armsiner / 4)) * 1)
	yy = (cos((armsiner / 4)) * 1)
}
if (armexp == 4)
{
	face = 1
	arm = 2
	idealarmx1 = (x + 60)
	idealarmy1 = (y + 50)
	idealarmy2 = 130
	armsiner += 1
	xx = (sin((armsiner / 2)) * 4)
	yy = (cos((armsiner / 2)) * 4)
}
if (armexp == 5)
{
	face = 3
	arm = 1
	xadjust = 6
	idealarmx1 = (x + 45)
	idealarmy1 = (y + 48)
	idealarmx2 = (x + 65)
	idealarmy2 = 130
	if (abs(xx) > 0.1)
		xx /= 1.5
	if (abs(yy) > 0.1)
		yy /= 1.5
	if (abs(bxx) > 0.1)
		bxx /= 1.5
	if (abs(byy) > 0.1)
		byy /= 1.5
}
if (armexp == 6)
{
	face = 7
	arm = 2
	idealarmx1 = (x + 48)
	idealarmy1 = (y + 56)
	idealarmx2 = (x + 62)
	idealarmy2 = (y + 50)
	armsiner += 1
	xx = (sin((armsiner / 3)) * 4)
	yy = (cos((armsiner / 3)) * 1)
}
if (armexp == 7)
{
	face = 5
	idealarmx1 = (x + 60)
	idealarmy1 = 130
	idealarmx2 = (x + 40)
	idealarmy2 = 130
	yadjust = 10
	xadjust = 2
	if (abs(xx) > 0.1)
		xx /= 1.5
	if (abs(yy) > 0.1)
		yy /= 1.5
	if (abs(xx) < 0.1 && abs(yy) < 0.1)
		armsiner = 0
	if (abs(bxx) > 0.1)
		bxx /= 1.5
	if (abs(byy) > 0.1)
		byy /= 1.5
}
if (armexp == 8)
{
	face = 2
	idealarmx1 = (x + 60)
	idealarmy1 = 130
	idealarmx2 = (x + 40)
	idealarmy2 = 130
	yadjust = 10
	xadjust = 2
	if (abs(xx) > 0.1)
		xx /= 1.5
	if (abs(yy) > 0.1)
		yy /= 1.5
	if (abs(xx) < 0.1 && abs(yy) < 0.1)
		armsiner = 0
	if (abs(bxx) > 0.1)
		bxx /= 1.5
	if (abs(byy) > 0.1)
		byy /= 1.5
}
draw_sprite(spr_catarm, arm, (armx1 + xx), (army1 + yy))
draw_sprite_ext(spr_catarm, arm, (armx2 + xx), (army2 + yy), -1, 1, 0, c_white, 1)
if (armx1 < idealarmx1)
	armx1 += xadjust
if (armx1 > idealarmx1)
	armx1 -= xadjust
if (armx2 < idealarmx2)
	armx2 += xadjust
if (armx2 > idealarmx2)
	armx2 -= xadjust
if (army1 < idealarmy1)
	army1 += yadjust
if (army2 < idealarmy2)
	army2 += yadjust
if (army1 > idealarmy1)
	army1 -= yadjust
if (army2 > idealarmy2)
	army2 -= yadjust
if (abs((armx1 - idealarmx1)) < xadjust)
	armx1 = idealarmx1
if (abs((armx2 - idealarmx2)) < xadjust)
	armx2 = idealarmx2
if (abs((army1 - idealarmy1)) < yadjust)
	army1 = idealarmy1
if (abs((army2 - idealarmy2)) < yadjust)
	army2 = idealarmy2
// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
	if keyboard_check_pressed(vk_space)
	{
		armexp += 1
		if (armexp == 9)
			armexp = 0
	}
}
