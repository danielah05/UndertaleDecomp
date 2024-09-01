// Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
if (global.debug == true)
{
    if (instance_exists(obj_floweyx_flamethrower) == false)
    {
        instance_create(110, 140, obj_floweyx_flamethrower)
        instance_create(530, 140, obj_floweyx_flamethrower)
    }
    else
        obj_floweyx_flamethrower.con = 3
}
