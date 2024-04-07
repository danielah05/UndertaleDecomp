if (x > (view_xview_get(0) - 100) && x < ((view_xview_get(0) + view_wview_get(0)) + 100))
{
    if (y > (view_yview_get(0) - 100) && y < ((view_yview_get(0) + view_hview_get(0)) + 100))
        instance_create(((x + random(60)) - 20), (y - 15), obj_glowparticle_1)
}
alarm[0] = 10
