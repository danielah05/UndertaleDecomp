scr_depth(0, 0, 0, 0, 0)
scr_npc_anim()
scr_npcdir(2)
image_alpha = 0
if instance_exists(obj_mainchara)
{
    dist = distance_to_object(obj_mainchara)
    if (dist < 60)
    {
        disto = (5 / (dist + 2))
        if (disto > 1)
            disto = 1
        image_alpha = disto
    }
}
