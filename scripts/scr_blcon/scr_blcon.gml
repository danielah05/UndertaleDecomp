function scr_blcon()
{
	writer = instance_create((argument0 + 30), (argument1 + 10), OBJ_WRITER)
	blcon = instance_create((writer.x - 30), (writer.y - 10), obj_blconwideslave)
	blcon.parent = writer
	if (argument2 == 1)
		blcon.sprite_index = spr_blconwdshrt_l
	if (argument2 == 2)
	{
		blcon.sprite_index = spr_blconabove
		writer.writingy -= 20
		writer.writingx -= 20
	}
	if (argument2 == 3)
	{
		blcon.sprite_index = spr_blconwdshrt
		writer.writingy -= 20
	}
	if (argument2 == 4)
	{
		blcon.sprite_index = spr_blconbelow
		writer.writingx -= 10
	}
}
