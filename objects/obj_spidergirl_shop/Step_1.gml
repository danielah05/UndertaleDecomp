scr_depth(0, 0, 0, 0, 0)
if (myinteract > 0)
{
    sprite_index = spr_muffet_buysell
    if instance_exists(OBJ_WRITER)
    {
        if (OBJ_WRITER.halt == 0)
            image_speed = 0.1
    }
}
else
{
    sprite_index = spr_muffet_overworld
    image_index = 0
    image_speed = 0
}
