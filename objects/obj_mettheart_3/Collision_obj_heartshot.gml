snd_play(snd_mtt_hit)
event_user(0)
with (other.id)
    instance_destroy()
life -= 40
if (life < 1 && movetype != 1)
{
    with (obj_blackbox_pl)
        instance_destroy()
    with (obj_mettlightning_pl)
        instance_destroy()
    with (obj_npc_marker)
        instance_destroy()
    with (obj_mettfodder)
    {
        flash = 5
        type = 2
    }
    with (obj_kissybullet_pl)
        instance_destroy()
    event_user(1)
    q = 0
    repeat num
    {
        kid[q].visible = false
        q += 1
    }
}
global.ratings += 20
