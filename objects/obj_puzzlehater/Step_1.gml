scr_depth(0, 0, 0, 0, 0)
if (spec == 0)
    scr_npc_anim()
if (spec == 1 && instance_exists(OBJ_WRITER))
    image_speed = 0.25
if (instance_exists(OBJ_WRITER) == false)
{
    spec = 0
    image_speed = 0
}
