if (global.osflavor <= 3 && fps <= 21)
    fps_counter += 1
else
    fps_counter = 0
if (fps_counter >= 90)
{
    not_allowed = 1
    emer = scr_marker((x - 1), (y - 1), spr_labcamera_emergency)
    emer.image_speed = 0.5
    emer.depth = 198
    instance_destroy()
    return;
}
