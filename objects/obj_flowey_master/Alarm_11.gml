obj_floweybodyparent.knockfactor = knockfactor
with (obj_floweybodyparent)
{
    if (object_index != obj_floweyx_tv)
    {
        image_blend = make_color_rgb(255, (255 - (knockfactor * 5)), (255 - (knockfactor * 5)))
        blend2 = make_color_rgb(255, (255 - (knockfactor * 5)), (255 - (knockfactor * 5)))
        x = ((xstart + random((knockfactor * 3))) - random((knockfactor * 3)))
        y = ((ystart + random((knockfactor * 3))) - random((knockfactor * 3)))
        if (object_index == obj_fleshface || object_index == obj_floweyx_mouth)
        {
            x = xstart
            y = ystart
        }
        if (object_index == obj_sidestalk)
        {
            y -= 80
            if (x > 320)
                x -= 40
            if (x < 320)
                x += 40
        }
    }
}
knockfactor -= 1
alarm[11] = 1
if (knockfactor < 0)
    alarm[11] = -1
