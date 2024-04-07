shkx = (shaker * choose(1, -1))
shky = (shaker * choose(1, -1))
if (shaker > 0)
    shaker -= 1
draw_set_color(c_black)
draw_set_alpha(b_al)
ossafe_fill_rectangle(-10, -10, 999, 999)
draw_set_alpha(1)
draw_sprite_ext(spr_barriercut, 0, ((-bx) + shkx), (y + shky), 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_barriercut, 1, (bx + shkx), (y + shky), 1, 1, 0, c_white, 1)
timer += 1
if (timer == 60)
    caster_play(sfx2, 0.8, 0.95)
if (timer >= 60)
{
    bx += bxspeed
    bxspeed += 2
}
if (timer == 110)
{
    global.msc = 0
    global.typer = 21
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_barriercut_94")
    instance_create(50, 50, OBJ_WRITER)
}
if (timer == 310)
{
    if instance_exists(obj_asriel_overworldanim)
    {
        obj_asriel_overworldanim.powered = 0
        obj_asriel_overworldanim.con = 20
    }
}
if (timer >= 310)
    b_al -= 0.02
if (timer >= 370)
{
    caster_free(all)
    instance_destroy()
}
