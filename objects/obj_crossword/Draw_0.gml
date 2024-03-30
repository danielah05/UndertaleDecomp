draw_me()
if (cross == 1)
{
    depth = 0
    draw_sprite(scr_getsprite(spr_wordsearch), nightmare, 20, 20)
}
else
    depth = 100000
if (cross == 1 && cancel == 1)
{
    if (control_check_pressed(InteractButton) == true || control_check_pressed(CancelButton) == true)
    {
        cancel = 0
        cross = 0
        global.interact = 0
        myinteract = 0
    }
}
