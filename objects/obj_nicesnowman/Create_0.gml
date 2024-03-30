scr_depth(0, 0, 0, 0, 0)
myinteract = 0
image_xscale = 1
image_yscale = 1
dt = 0
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
