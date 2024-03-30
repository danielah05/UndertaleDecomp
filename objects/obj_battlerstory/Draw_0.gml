if (clap < 3)
{
    obj_mainchara.depth = depp
    if instance_exists(obj_fader)
    {
        with (obj_fader)
            instance_destroy()
    }
}
if (heartdraw == 1)
    draw_sprite(spr_heartsmall, 0, (obj_mainchara.x + 5), (obj_mainchara.y + 17))
