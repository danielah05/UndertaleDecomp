if (con == 1)
{
    global.interact = 1
    blk -= 0.01
    if (blk == 1)
        caster_loop(o_music, 0.9, 0.9)
    draw_set_alpha(blk)
    draw_set_color(c_black)
    ossafe_fill_rectangle(-100, -100, 999, 999)
    draw_set_alpha(1)
    if (blk <= 0)
    {
        con = 2
        alarm[4] = 50
    }
}
if (con == 3)
{
    global.msc = 814
    global.typer = 4
    global.facechoice = 1
    global.faceemotion = 0
    instance_create(0, 0, obj_dialoguer)
    con = 4
}
if (con == 4 && instance_exists(OBJ_WRITER) == false)
{
    pap.thisy = pap.y
    con = 5
    alarm[4] = 3
}
if (con == 5)
{
    pap.sprite_index = spr_papyrus_d
    pap.y += 5
    pap.image_speed = 0.334
}
if (con == 6)
{
    pap.sprite_index = spr_papyrus_r
    pap.x += 7
    if (pap.x > room_width)
    {
        con = 7
        alarm[4] = 30
    }
}
if (con == 8)
{
    global.msc = 0
    global.typer = 17
    global.facechoice = 3
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_outsideworld_event_158") //\\E0* welp./
    global.msg[1] = scr_gettext("obj_outsideworld_event_159") //\\E1* someone's gotta keep&  him from getting&  into trouble./
    global.msg[2] = scr_gettext("obj_outsideworld_event_160") //\\E2* see you guys./%%
    instance_create(0, 0, obj_dialoguer)
    con = 9
}
if (con == 9 && instance_exists(OBJ_WRITER) == false)
{
    sans.y += 2
    sans.sprite_index = spr_sans_d
    sans.image_speed = 0.2
    if (sans.y > room_height)
    {
        con = 10
        alarm[4] = 20
    }
}
if (con == 11)
{
    global.msc = 0
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 9
    global.msg[0] = scr_gettext("obj_outsideworld_event_183")
    global.msg[1] = scr_gettext("obj_outsideworld_event_184")
    instance_create(0, 0, obj_dialoguer)
    con = 12
}
if (con == 12 && instance_exists(OBJ_WRITER) == false)
{
    con = 13
    alarm[4] = 3
}
if (con == 13)
{
    und.sprite_index = spr_undyne_d
    und.y += 5
    und.image_speed = 0.334
}
if (con == 14)
{
    und.sprite_index = spr_undyne_r
    und.x += 7
    if (und.x > (room_width + 17))
    {
        con = 15
        alarm[4] = 15
    }
}
if (con == 16)
{
    global.msc = 0
    global.typer = 47
    global.facechoice = 6
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_outsideworld_event_219")
    instance_create(0, 0, obj_dialoguer)
    con = 17
}
if (con == 17 && instance_exists(OBJ_WRITER) == false)
{
    con = 18
    alarm[4] = 3
}
if (con == 18)
{
    al.sprite_index = spr_alphys_d
    al.y += 5
    al.image_speed = 0.334
}
if (con == 19)
{
    al.sprite_index = spr_alphys_r
    al.x += 7
    if (al.x > room_width)
    {
        con = 20
        alarm[4] = 95
    }
}
if (con == 21)
{
    global.msc = 0
    global.typer = 60
    global.facechoice = 7
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_outsideworld_event_255")
    instance_create(0, 0, obj_dialoguer)
    con = 22
}
if (con == 22 && instance_exists(OBJ_WRITER) == false)
{
    con = 23
    alarm[4] = 120
}
if (con == 24)
{
    asg.sprite_index = spr_asgore_l
    global.msc = 0
    global.typer = 60
    global.facechoice = 7
    global.faceemotion = 3
    global.msg[0] = scr_gettext("obj_outsideworld_event_273")
    scr_torface(1, 9)
    global.msg[2] = scr_gettext("obj_outsideworld_event_275")
    scr_asgface(3, 0)
    global.msg[4] = scr_gettext("obj_outsideworld_event_277")
    instance_create(0, 0, obj_dialoguer)
    con = 25
}
if (con == 25 && instance_exists(OBJ_WRITER) == false)
{
    asg.sprite_index = spr_asgore_r
    asg.image_speed = 0.25
    asg.x += 5
    if (asg.x > room_width)
    {
        con = 26
        alarm[4] = 20
    }
}
if (con == 27)
{
    tor.sprite_index = spr_toriel_r
    con = 28
    alarm[4] = 60
}
if (con == 29)
{
    tor.sprite_index = spr_toriel_r
    con = 30
    global.msc = 0
    global.typer = 4
    global.facechoice = 1
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_outsideworld_event_309")
    instance_create(0, 0, obj_dialoguer)
}
if (con == 30 && instance_exists(OBJ_WRITER) == false)
{
    con = 31
    tor.sprite_index = spr_toriel_u
    con = 32
    alarm[4] = 90
}
if (con == 33)
{
    tor.sprite_index = spr_toriel_l
    alarm[4] = 50
    con = 34
}
if (con == 35)
{
    mc.sprite_index = spr_maincharar
    global.typer = 4
    global.msc = 820
    instance_create(0, 0, obj_dialoguer)
    con = 36
}
if (con == 100 && instance_exists(OBJ_WRITER) == false)
{
    FL_FinalTorielChoice = Choices.Stayed
    global.msc = 0
    global.facechoice = 1
    global.faceemotion = 8
    global.typer = 4
    global.msg[0] = scr_gettext("obj_outsideworld_event_344") //* What?/
    global.msg[1] = scr_gettext("obj_outsideworld_event_345") //\\E1* Frisk.../
    global.msg[2] = scr_gettext("obj_outsideworld_event_346") //\\E0* You really are a&  funny child./
    global.msg[3] = scr_gettext("obj_outsideworld_event_347") //\\E1* If you had said that&  earlier^1, none of this&  would have happened./
    global.msg[4] = scr_gettext("obj_outsideworld_event_348") //\\E0* It is a good thing&  you took so long to&  change your mind./
    global.msg[5] = scr_gettext("obj_outsideworld_event_349") //* Hee hee hee./
    global.msg[6] = scr_gettext("obj_outsideworld_event_350") //* Well..^1.&* I suppose./
    global.msg[7] = scr_gettext("obj_outsideworld_event_351") //* If you really do&  not have any other&  place to go.../
    global.msg[8] = scr_gettext("obj_outsideworld_event_352") //* I will do my best to&  take care of you^1, for&  as long as you need./
    global.msg[9] = scr_gettext("obj_outsideworld_event_353") //* All right?/
    global.msg[10] = scr_gettext("obj_outsideworld_event_354") //* Now^1, come along./%%
    instance_create(0, 0, obj_dialoguer)
    con = 101
}
if (con == 101 && instance_exists(OBJ_WRITER) == false)
{
    tor.x -= 16
    tor.sprite_index = spr_toriel_handhold_r
    mc.visible = false
    con = 102
    alarm[4] = 40
}
if (con == 103)
{
    global.msg[0] = scr_gettext("obj_outsideworld_event_372") //* Everyone is waiting&  for us!/%%
    con = 104
    instance_create(0, 0, obj_dialoguer)
}
if (con == 104 && instance_exists(OBJ_WRITER) == false)
{
    tor.x += 2
    tor.image_speed = 0.125
    if (tor.x > (room_width + 100))
        con = 105
}
if (con == 105)
{
    blk += 0.01
    vol = caster_get_volume(o_music)
    vol -= 0.01
    caster_set_volume(o_music, vol)
    draw_set_alpha(blk)
    draw_set_color(c_black)
    ossafe_fill_rectangle(-100, -100, 999, 999)
    draw_set_alpha(1)
    if (blk >= 1.6)
    {
        caster_free(all)
        do_room_goto = true
    }
}
if (con == 200 && instance_exists(OBJ_WRITER) == false)
{
    global.msc = 0
    global.facechoice = 1
    global.faceemotion = 2
    global.typer = 4
    global.msg[0] = scr_gettext("obj_outsideworld_event_413") //\\E1* Ah./
    global.msg[1] = scr_gettext("obj_outsideworld_event_414") //\\E0* ... I see./
    global.msg[2] = scr_gettext("obj_outsideworld_event_415") //\\E1* .../
    global.msg[3] = scr_gettext("obj_outsideworld_event_416") //\\E0* Well^1, I hope that&  I am not keeping&  you./%%
    instance_create(0, 0, obj_dialoguer)
    con = 201
}
if (con == 201 && instance_exists(OBJ_WRITER))
{
    if (OBJ_WRITER.stringno == 1)
        tor.sprite_index = spr_toriel_u
    if (OBJ_WRITER.stringno == 3)
        tor.sprite_index = spr_toriel_l
}
if (con == 201 && instance_exists(OBJ_WRITER) == false)
{
    tor.sprite_index = spr_toriel_u
    con = 203
    alarm[4] = 15
}
if (con == 204)
{
    tor.sprite_index = spr_toriel_r
    con = 205
    alarm[4] = 15
}
if (con == 206)
{
    alarm[4] = 27
    con = 207
}
if (con == 207)
{
    tor.x += 1
    tor.image_speed = 0.1
}
if (con == 208)
{
    tor.image_speed = 0
    tor.image_index = 0
    con = 209
    alarm[4] = 90
}
if (con == 210)
{
    tor.sprite_index = spr_toriel_l
    con = 211
    alarm[4] = 50
}
if (con == 212)
{
    FL_FinalTorielChoice = Choices.Left
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_outsideworld_event_478") //* Frisk./
    global.msg[1] = scr_gettext("obj_outsideworld_event_479") //* \"See you around.\"/%%
    instance_create(0, 0, obj_dialoguer)
    con = 213
}
if (con == 213 && instance_exists(OBJ_WRITER) == false)
{
    tor.sprite_index = spr_toriel_l
    con = 214
    alarm[4] = 60
}
if (con == 215)
{
    tor.sprite_index = spr_toriel_r
    con = 216
    alarm[4] = 80
}
if (con == 217)
{
    mc.sprite_index = spr_maincharau
    tor.x += 3
    tor.image_speed = 0.25
    if (tor.x >= (room_width + 100))
        con = 105
}
