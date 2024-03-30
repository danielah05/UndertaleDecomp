snd_play(snd_impact)
instance_create(0, 0, obj_flasher)
scr_shake(4, 4, 2)
if instance_exists(obj_undynedate_inside)
{
    with (obj_undynedate_inside.table)
        image_index = 1
}
speed = 0
sprite_index = spr_undynespear_stabbed
image_angle += 90
