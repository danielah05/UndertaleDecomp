var writerx = 60
var writery = 60
if (global.language == "ja")
    writerx = 95
if (con == 1)
{
    global.msc = 0
    global.typer = 120
    global.msg[0] = scr_gettext("obj_endflowey_regret_111")
    instance_create(writerx, writery, OBJ_WRITER)
    con = 1.1
}
if (con == 1.1 && instance_exists(OBJ_WRITER) == false)
{
    con = 0.9
    alarm[4] = 60
}
if (con == 1.9)
{
    global.msc = 0
    global.typer = 120
    global.msg[0] = scr_gettext("obj_endflowey_regret_128")
    global.msg[1] = scr_gettext("obj_endflowey_regret_129")
    global.msg[2] = scr_gettext("obj_endflowey_regret_130")
    global.msg[3] = scr_gettext("obj_endflowey_regret_131")
    global.msg[4] = scr_gettext("obj_endflowey_regret_132")
    instance_create(writerx, writery, OBJ_WRITER)
    con = 0.2
}
if (con == 0.2 && instance_exists(OBJ_WRITER) == false)
{
    con = 1.2
    alarm[4] = 70
}
if (con == 2.2)
{
    global.msc = 0
    global.typer = 120
    global.msg[0] = scr_gettext("obj_endflowey_regret_148")
    global.msg[1] = scr_gettext("obj_endflowey_regret_149")
    global.msg[2] = scr_gettext("obj_endflowey_regret_150")
    global.msg[3] = scr_gettext("obj_endflowey_regret_151")
    global.msg[4] = scr_gettext("obj_endflowey_regret_152")
    global.msg[5] = scr_gettext("obj_endflowey_regret_153")
    global.msg[6] = scr_gettext("obj_endflowey_regret_154")
    global.msg[7] = scr_gettext("obj_endflowey_regret_155")
    global.msg[8] = scr_gettext("obj_endflowey_regret_156")
    global.msg[9] = scr_gettext("obj_endflowey_regret_157")
    global.msg[10] = scr_gettext("obj_endflowey_regret_158")
    global.msg[11] = scr_gettext("obj_endflowey_regret_159")
    global.msg[12] = scr_gettext("obj_endflowey_regret_160")
    global.msg[13] = scr_gettext("obj_endflowey_regret_161")
    global.msg[14] = scr_gettext("obj_endflowey_regret_162")
    global.msg[15] = scr_gettext("obj_endflowey_regret_163")
    global.msg[16] = scr_gettext("obj_endflowey_regret_164")
    global.msg[17] = scr_gettext("obj_endflowey_regret_165")
    global.msg[18] = scr_gettext("obj_endflowey_regret_166")
    global.msg[19] = scr_gettext("obj_endflowey_regret_167")
    global.msg[20] = scr_gettext("obj_endflowey_regret_168")
    global.msg[21] = scr_gettext("obj_endflowey_regret_169")
    global.msg[22] = scr_gettext("obj_endflowey_regret_170")
    global.msg[23] = scr_gettext("obj_endflowey_regret_171")
    global.msg[24] = scr_gettext("obj_endflowey_regret_172")
    global.msg[25] = scr_gettext("obj_endflowey_regret_173")
    global.msg[26] = scr_gettext("obj_endflowey_regret_174")
    global.msg[27] = scr_gettext("obj_endflowey_regret_175")
    global.msg[28] = scr_gettext("obj_endflowey_regret_176")
    global.msg[29] = scr_gettext("obj_endflowey_regret_177")
    global.msg[30] = scr_gettext("obj_endflowey_regret_178")
    instance_create(writerx, writery, OBJ_WRITER)
    con = 0.3
}
if (con == 0.3 && instance_exists(OBJ_WRITER) == false)
{
    con = 1.3
    alarm[4] = 70
}
if (con == 2.3)
{
    global.msc = 0
    global.typer = 120
    global.msg[0] = scr_gettext("obj_endflowey_regret_195")
    global.msg[1] = scr_gettext("obj_endflowey_regret_197")
    global.msg[2] = scr_gettext("obj_endflowey_regret_199")
    global.msg[3] = scr_gettext("obj_endflowey_regret_201")
    global.msg[4] = scr_gettext("obj_endflowey_regret_203")
    global.msg[5] = scr_gettext("obj_endflowey_regret_205")
    global.msg[6] = scr_gettext("obj_endflowey_regret_207")
    global.msg[7] = scr_gettext("obj_endflowey_regret_209")
    global.msg[8] = scr_gettext("obj_endflowey_regret_211")
    global.msg[9] = scr_gettext("obj_endflowey_regret_213")
    global.msg[10] = scr_gettext("obj_endflowey_regret_215")
    global.msg[11] = scr_gettext("obj_endflowey_regret_217")
    global.msg[12] = scr_gettext("obj_endflowey_regret_219", chara)
    instance_create(writerx, writery, OBJ_WRITER)
    con = 2
}
if (con == 2 && instance_exists(OBJ_WRITER) == false)
{
    flowey = 3
    con = 3
    alarm[4] = 200
}
if (con == 4)
{
    ossafe_ini_open("undertale.ini")
    ini_write_real("EndF", "EndF", 2)
    ossafe_ini_close()
    ossafe_savedata_save()
    room_goto(room_emptyblack)
}
