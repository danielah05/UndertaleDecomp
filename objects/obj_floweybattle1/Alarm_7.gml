sprite_index = spr_floweyevil
if instance_exists(obj_blconwdflowey)
{
    with (obj_blconwdflowey)
        instance_destroy()
}
alarm[8] = 30
caster_stop(floweysong)
caster_free(floweysong)
