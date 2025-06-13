if (mydirection == 270 && myfacing == Direction.Down && goldshift == 1)
{
	goldshift = 0
	y -= 40
	mydirection = 90
	myfacing = Direction.Up
	sprite_index = spr_venter_u
}
if (mydirection == 0 && myfacing == Direction.Right && goldshift == 1)
{
	goldshift = 0
	x -= 40
	mydirection = 180
	myfacing = Direction.Left
	sprite_index = spr_venter_l
}
if (mydirection == 180 && myfacing == Direction.Left && goldshift == 1)
{
	goldshift = 0
	x += 40
	mydirection = 0
	myfacing = Direction.Right
	sprite_index = spr_venter_r
}
if (mydirection == 90 && myfacing == Direction.Up && goldshift == 1)
{
	goldshift = 0
	y += 40
	mydirection = 270
	myfacing = Direction.Down
	sprite_index = spr_venter_d
}
