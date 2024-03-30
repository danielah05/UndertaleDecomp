if (vic == instance_number(obj_xoxo))
    fvic = 1
if (fvic == 0)
    vic = 0
if (room == room_tundra_iceentrance && instance_exists(obj_mainchara))
{
    if (obj_mainchara.x > 540 && obj_mainchara.x < 560)
    {
        if (!instance_exists(obj_snowhat))
            instance_create(obj_mainchara.x, obj_mainchara.y, obj_snowhat)
    }
}
