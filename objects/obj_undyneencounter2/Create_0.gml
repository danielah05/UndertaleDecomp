cn = 0
active = false
if (global.plot < 110)
{
    undyne = instance_create(-40, 90, obj_undynea_actor)
    mkid = instance_create(360, 100, obj_mkid_actor)
    undyne.dsprite = spr_undyne_starkd
    undyne.sprite_index = spr_undyne_starkd
    active = true
}
