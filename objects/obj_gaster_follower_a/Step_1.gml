scr_depth(0, 0, 0, 0, 0)
scr_npc_anim()
if (con == 1 && instance_exists(OBJ_WRITER) == false)
{
    snd_play(snd_mysterygo)
    x = -100
    y = -100
    con = 2
    visible = false
}
