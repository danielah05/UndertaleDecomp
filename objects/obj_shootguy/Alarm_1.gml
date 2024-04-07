if (room == room_fire_shootguy_1)
{
    idealammo = 2
    if (active == true)
        alarm[5] = 1
    gridl = 120
    gridr = 180
    gridu = 60
    gridd = 120
    instance_create(140, 60, obj_blackbox_o)
    instance_create(140, 100, obj_blackbox_o)
}
if (room == room_fire_shootguy_2)
{
    idealammo = 2
    if (active == true)
        alarm[5] = 1
    gridl = 120
    gridr = 200
    gridu = 40
    gridd = 120
    instance_create(120, 60, obj_blackbox_o)
    instance_create(140, 60, obj_blackbox_o)
    instance_create(140, 100, obj_blackbox_o)
    instance_create(160, 60, obj_blackbox_o)
    instance_create(160, 80, obj_blackbox_o)
    instance_create(160, 100, obj_blackbox_o)
}
if (room == room_fire_shootguy_3)
{
    idealammo = 1
    if (active == true)
        alarm[5] = 1
    gridl = 120
    gridr = 220
    gridu = 40
    gridd = 120
    instance_create(180, 40, obj_blackbox_o)
    instance_create(180, 60, obj_blackbox_o)
    instance_create(180, 80, obj_blackbox_o)
    instance_create(180, 100, obj_blackbox_o)
}
if (room == room_fire_shootguy_4)
{
    idealammo = 1
    if (active == true)
        alarm[5] = 1
    gridl = 120
    gridr = 220
    gridu = 20
    gridd = 120
    instance_create(180, 20, obj_blackbox_o)
    instance_create(140, 40, obj_blackbox_o)
    instance_create(160, 60, obj_blackbox_o)
    instance_create(200, 60, obj_blackbox_o)
    instance_create(140, 80, obj_blackbox_o)
    instance_create(180, 80, obj_blackbox_o)
}
if (room == room_fire_shootguy_5)
{
    idealammo = 2
    if (active == true)
        alarm[5] = 1
    gridl = 120
    gridr = 220
    gridu = 20
    gridd = 120
    instance_create(160, 40, obj_blackbox_o)
    instance_create(160, 80, obj_blackbox_o)
    instance_create(140, 60, obj_blackbox_o)
    instance_create(160, 60, obj_blackbox_o)
    instance_create(180, 60, obj_blackbox_o)
    instance_create(200, 60, obj_blackbox_o)
}
if (win > 0)
{
    with (obj_blackbox_o)
        instance_destroy()
    with (obj_targetguy)
        instance_destroy()
}
