myinteract = 4
global.msc = 15
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (global.hp < global.maxhp)
    global.hp = global.maxhp
global.en = global.maxen
snd_play(snd_power)
offroom = 0
if (room == room_castle_front)
    offroom = 1
if (room == room_castle_throneroom)
    offroom = 1
if (room == room_castle_finalshoehorn)
    offroom = 1
if (room == room_castle_prebarrier)
    offroom = 1
if (room == room_sanscorridor)
    offroom = 1
if (room == room_castle_elevatorout)
    offroom = 1
if (room == room_truelab_hub)
    offroom = 1
if (room == room_truelab_bedroom)
    offroom = 1
if (scr_murderlv() >= 2 && FL_SparedSpecific == 0)
{
    if (room == room_tundra3 || room == room_tundra_spaghetti || room == room_tundra_lesserdog || room == room_tundra_town)
    {
        if (FL_SparedSpecific == 0)
        {
            global.msc = 0
            pop = (16 - FL_TundraKillsCounter)
            if (pop < 0)
                pop = 0
            if (scr_murderlv() >= 2)
                global.msg[0] = scr_gettext("obj_savepoint_97", string(pop))
            if (scr_murderlv() == 5)
                global.msg[0] = scr_gettext("obj_savepoint_99")
            if (FL_SnowdrakeStatus == SnowdrakeStatus.Killed && pop <= 0)
                global.msg[0] = scr_gettext("obj_savepoint_101")
            if (pop <= 0 && FL_SnowdrakeStatus != SnowdrakeStatus.Killed)
                global.msg[0] = scr_gettext("obj_savepoint_103")
        }
    }
}
if (scr_murderlv() >= 8 && FL_SparedSpecific == 0)
{
    if (room == room_water2 || room == room_water4 || room == room_water_savepoint1 || room == room_water_preundyne || room == room_water_trashsavepoint || room == room_water_friendlyhub || room == room_water_undynefinal || room == room_water19 || room == room_water_temvillage)
    {
        if (FL_SparedSpecific == 0)
        {
            global.msc = 0
            pop = (18 - FL_WaterfallKillsCounter)
            if (pop < 0)
                pop = 0
            if (scr_murderlv() >= 8)
                global.msg[0] = scr_gettext("obj_savepoint_118", string(pop))
            if (pop <= 0)
                global.msg[0] = scr_gettext("obj_savepoint_120")
        }
    }
}
if (scr_murderlv() >= 12 && FL_SparedSpecific == 0)
{
    if (room == room_fire_prelab || room == room_fire6 || room == room_fire_savepoint1 || room == room_fire_mewmew2 || room == room_fire_savepoint2 || room == room_fire_hotellobby || room == room_fire_core_branch || room == room_fire_core_premett)
    {
        if (FL_SparedSpecific == 0)
        {
            global.msc = 0
            pop = (40 - FL_HotlandKillsCounter)
            if (pop < 0)
                pop = 0
            if (scr_murderlv() >= 12)
                global.msg[0] = scr_gettext("obj_savepoint_135", string(pop))
            if (pop <= 0)
                global.msg[0] = scr_gettext("obj_savepoint_137")
        }
    }
}
if (scr_murderlv() >= 16)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_savepoint_145")
}
if (offroom == 0)
    mydialoguer = instance_create(0, 0, obj_dialoguer)
