if (global.plot < 118)
    tile_layer_hide(999900)
if (global.plot > 117)
{
    tile_layer_show(999900)
    d = instance_position((x + 5), (y + 5), obj_solidexwide)
    with (d)
        instance_destroy()
    instance_destroy()
}
