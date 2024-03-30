if (spec == 3 || spec == 5)
{
    bone = instance_create((x + 50), (y - 50), obj_friendprotector)
    bone.sprite_index = spr_bonesaver
    if (spec == 5)
        bone.sprite_index = spr_firesaver
    instance_destroy()
}
if (spec == 4 || spec == 6)
{
    spear = instance_create((x - 70), (y - 50), obj_friendprotector)
    spear.sprite_index = spr_spearsaver
    if (spec == 6)
        spear.sprite_index = spr_litsaver
    instance_destroy()
}
