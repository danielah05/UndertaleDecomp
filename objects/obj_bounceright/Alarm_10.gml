if (con == 0)
{
	mydirection += 90
	myfacing += 1
	if (myfacing >= 4)
		myfacing -= 4
	if (mydirection >= 360)
		mydirection -= 360
	if (myfacing == Direction.Down)
		sprite_index = spr_venter_d
	if (myfacing == Direction.Right)
		sprite_index = spr_venter_r
	if (myfacing == Direction.Up)
		sprite_index = spr_venter_u
	if (myfacing == Direction.Left)
		sprite_index = spr_venter_l
}
alarm[10] = fliptime
