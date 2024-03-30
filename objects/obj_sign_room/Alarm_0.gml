myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (room == room_ruins12B || room == room_fire_spidershop)
    global.msg[0] = scr_gettext("obj_sign_room_66")
if (room == room_tundra3)
{
    global.msg[0] = scr_gettext("obj_sign_room_90")
    global.msg[1] = scr_gettext("obj_sign_room_91")
    global.msg[2] = scr_gettext("obj_sign_room_92")
    global.msg[3] = scr_gettext("obj_sign_room_93")
}
if (room == room_tundra5)
    global.msg[0] = scr_gettext("obj_sign_room_97")
if (room == room_tundra6)
{
    global.msg[0] = scr_gettext("obj_sign_room_101")
    global.msg[1] = scr_gettext("obj_sign_room_102")
    global.msg[2] = scr_gettext("obj_sign_room_103")
}
if (room == room_tundra8)
{
    global.msg[0] = scr_gettext("obj_sign_room_107")
    global.msg[1] = scr_gettext("obj_sign_room_108")
    global.msg[2] = scr_gettext("obj_sign_room_109")
}
if (room == room_tundra8A)
{
    global.msg[0] = scr_gettext("obj_sign_room_113")
    global.msg[1] = scr_gettext("obj_sign_room_114")
    global.msg[2] = scr_gettext("obj_sign_room_116")
    global.msg[3] = scr_gettext("obj_sign_room_117")
}
if (room == room_tundra_snowpuzz)
{
    global.msg[0] = scr_gettext("obj_sign_room_119")
    if (talkedto == 1)
        global.msg[0] = scr_gettext("obj_sign_room_120")
}
if (room == room_tundra_xoxopuzz || room == room_tundra_xoxosmall)
    global.msg[0] = scr_gettext("obj_sign_room_121")
if (room == room_tundra_lesserdog)
    global.msg[0] = scr_gettext("obj_sign_room_123")
if (room == room_tundra_poffzone)
    global.msg[0] = scr_gettext("obj_sign_room_124")
if (room == room_tundra_iceentrance)
    global.msg[0] = scr_gettext("obj_sign_room_126")
if (room == room_water3)
{
    global.msg[0] = scr_gettext("obj_sign_room_130")
    global.msg[1] = scr_gettext("obj_sign_room_131")
    global.msg[2] = scr_gettext("obj_sign_room_132")
    global.msg[3] = scr_gettext("obj_sign_room_133")
}
if (room == room_water5)
{
    global.msg[0] = scr_gettext("obj_sign_room_145")
    global.msg[1] = scr_gettext("obj_sign_room_146")
}
if (room == room_water_mushroom)
    global.msg[0] = scr_gettext("obj_sign_room_151")
if (room == room_water_prewaterfall)
    global.msg[0] = scr_gettext("obj_sign_room_156")
if (room == room_water_friendlyhub)
    global.msg[0] = scr_gettext("obj_sign_room_163")
if (room == room_water_undynehouse)
    global.msc = 706
if (room == room_tundra_town)
{
    global.msg[0] = scr_gettext("obj_sign_room_207")
    global.msg[1] = scr_gettext("obj_sign_room_208")
}
if (room == room_water_temvillage)
{
    global.msg[0] = scr_gettext("obj_sign_room_220")
    if (x > 270)
        global.msg[0] = scr_gettext("obj_sign_room_221")
    if (x > 330)
        global.msg[0] = scr_gettext("obj_sign_room_222")
}
if (room == room_fire_hoteldoors)
{
    global.msg[0] = scr_gettext("obj_sign_room_227")
    global.msg[1] = scr_gettext("obj_sign_room_228")
}
if (room == room_dogshrine_ruined)
{
    if (sprite_index == spr_ds2_rope)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_0")
        if (x >= 60)
        {
            global.msg[0] = scr_gettext("obj_sign_room_ds2_1")
            global.msg[1] = scr_gettext("obj_sign_room_ds2_2")
        }
    }
    if (sprite_index == spr_ds2_portrait1)
        global.msg[0] = scr_gettext("obj_sign_room_ds2_3")
    if (sprite_index == spr_ds2_portrait2)
        global.msg[0] = scr_gettext("obj_sign_room_ds2_4")
    if (sprite_index == spr_ds2_mascot1)
        global.msg[0] = scr_gettext("obj_sign_room_ds2_5")
    if (sprite_index == spr_ds2_goldbox)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_6")
        global.msg[1] = scr_gettext("obj_sign_room_ds2_7")
    }
    if (sprite_index == spr_ds2_dogtap)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_8")
        global.msg[1] = scr_gettext("obj_sign_room_ds2_9")
        global.msg[2] = scr_gettext("obj_sign_room_ds2_10")
    }
    if (sprite_index == spr_ds2_dango)
        global.msg[0] = scr_gettext("obj_sign_room_ds2_11")
    if (sprite_index == spr_ds2_certificate)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_12")
        global.msg[1] = scr_gettext("obj_sign_room_ds2_13")
    }
    if (sprite_index == spr_ds2_boombox)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_14")
        global.msg[1] = scr_gettext("obj_sign_room_ds2_15")
    }
    if (sprite_index == spr_ds2_cd)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_16")
        global.msg[1] = scr_gettext("obj_sign_room_ds2_17")
    }
    if (sprite_index == spr_ds2_blueprint)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_18")
        global.msg[1] = scr_gettext("obj_sign_room_ds2_19")
    }
}
if (room == room_water_undyneyard)
{
    if (FL_MadMewMewStatus >= MadMewMewStatus.Killed)
    {
        global.msg[0] = scr_gettext("obj_sign_room_mew_0")
        global.msg[1] = scr_gettext("obj_sign_room_mew_1")
        global.msg[2] = scr_gettext("obj_sign_room_mew_2")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_sign_room_mew_3")
        global.msg[1] = scr_gettext("obj_sign_room_mew_4")
        global.msg[2] = scr_gettext("obj_sign_room_mew_5")
        global.msg[3] = scr_gettext("obj_sign_room_mew_6")
        global.msg[4] = scr_gettext("obj_sign_room_mew_7")
        global.msg[5] = scr_gettext("obj_sign_room_mew_8")
        global.msg[6] = scr_gettext("obj_sign_room_mew_9")
        if (talkedto >= 1)
        {
            global.msg[0] = scr_gettext("obj_sign_room_mew_10")
            global.msg[1] = scr_gettext("obj_sign_room_mew_11")
        }
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
