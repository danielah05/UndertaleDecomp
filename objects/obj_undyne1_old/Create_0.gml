if (global.plot > 105)
    instance_destroy()
else
{
    con = 0
    image_yscale = 999
    mkid = instance_create(260, 100, obj_mkid_actor)
    undyne = instance_create(500, 100, obj_undynea_actor)
    undyne.sprite_index = spr_undynea_l
    mkid.sprite_index = spr_mkid_r
}
look = 0
spinagain = 0
