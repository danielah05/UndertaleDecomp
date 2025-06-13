if (global.weapon == Items.Stick)
	instance_create((x - 16), y, obj_targetchoice)
if (global.weapon == Items.ToyKnife || global.weapon == Items.TornNotebook || global.weapon == Items.WornDagger || global.weapon == Items.RealKnife)
{
	r = round(random(1))
	if (r == 0)
		instance_create((x - 16), y, obj_targetchoice)
	if (r == 1)
		instance_create((x + 570), y, obj_targetchoice)
}
if (global.weapon == Items.ToughGlove || global.weapon == Items.BurntPan)
{
	r = round(random(1))
	if (r == 0)
		instance_create((x - 16), y, obj_targetchoicefist)
	if (r == 1)
		instance_create((x + 570), y, obj_targetchoicefist)
}
