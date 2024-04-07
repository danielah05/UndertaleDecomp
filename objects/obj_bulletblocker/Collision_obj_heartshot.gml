if (visible == true)
{
    with (other.id)
        instance_destroy()
}
if (visible == true)
{
    if instance_exists(obj_ratingsmaster)
        global.ratings += 20
    snd_play(snd_mtt_burst)
    bp = instance_create(x, y, obj_brokenpiece)
    if instance_exists(bp)
        bp.sprite_index = sprite_index
    visible = false
}
