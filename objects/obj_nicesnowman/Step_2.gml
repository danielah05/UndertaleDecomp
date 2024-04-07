if (dt == 1 && instance_exists(OBJ_WRITER) == false)
{
    dt = 0
    FL_SnowmanPieceCounter += 1
}
if (FL_SnowmanPieceCounter == 1)
{
    sprite_index = spr_sadsnowman_d1
    image_index = 0
}
if (FL_SnowmanPieceCounter == 2)
{
    sprite_index = spr_sadsnowman_d1
    image_index = 1
}
if (FL_SnowmanPieceCounter >= 3)
{
    sprite_index = spr_sadsnowman_d1
    image_index = 2
}
