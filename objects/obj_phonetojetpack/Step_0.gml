ptimer += 1
if (ptimer == 40)
{
	global.facing = Direction.Up
	vspeed = 0
}
if (ptimer == 70)
{
	snd_play(snd_spearappear)
	sprite_index = spr_yellowphone_jetpacktransform
	image_index = 0
	image_speed = 0.334
}
if (ptimer > 70 && sprite_index == spr_yellowphone_jetpacktransform && image_index > 4)
{
	image_index = 4
	image_speed = 0
}
if (ptimer == 110)
{
	snd_play(snd_spearappear)
	vspeed = 5
}
if (ptimer > 110 && y > (ystart - 5) && align == 0)
{
	align = 1
	instance_create(0, 0, obj_flasher)
	snd_play(snd_impact)
	vspeed = 0
	y = ystart
}
if (ptimer > 110 && vspeed > 0)
{
	g = scr_afterimage(6, 0)
	g.image_alpha = 0.5
}
if (ptimer == 160)
{
	snd_play(snd_noise)
	sprite_index = spr_yellowjetpack
	image_speed = 0.5
}
if (ptimer > 160)
{
	x = clip.x
	y = (clip.y + 10)
}
