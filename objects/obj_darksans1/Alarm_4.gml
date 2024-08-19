global.faceemotion = 0
global.facechoice = 3
global.typer = 17
obj_mainchara.visible = true
sprite_index = spr_sans_r
image_index = 0
obj_mainchara.facing = Direction.Left
global.facing = Direction.Left
caster_loop(global.currentsong, 1, 1)
global.msg[0] = scr_gettext("obj_darksans1_187")
global.msg[1] = scr_gettext("obj_darksans1_188")
global.msg[2] = scr_gettext("obj_darksans1_189")
global.msg[3] = scr_gettext("obj_darksans1_190")
if (M1 > 0)
{
    global.msg[0] = scr_gettext("obj_darksans1_193")
    global.msg[1] = scr_gettext("obj_darksans1_194")
    global.msg[2] = scr_gettext("obj_darksans1_195")
    global.msg[3] = scr_gettext("obj_darksans1_196")
}
global.msg[4] = scr_gettext("obj_darksans1_198")
global.msg[5] = scr_gettext("obj_darksans1_199")
global.msg[6] = scr_gettext("obj_darksans1_200")
global.msg[7] = scr_gettext("obj_darksans1_201")
global.msg[8] = scr_gettext("obj_darksans1_202")
global.msg[9] = scr_gettext("obj_darksans1_203")
global.msg[10] = scr_gettext("obj_darksans1_204")
global.msg[11] = scr_gettext("obj_darksans1_205")
global.msg[12] = scr_gettext("obj_darksans1_206")
if (scr_murderlv() >= MurderLevel.Lv2TorielKilled)
{
    global.msg[0] = scr_gettext("obj_darksans1_210")
    global.msg[1] = scr_gettext("obj_darksans1_211")
    global.msg[2] = scr_gettext("obj_darksans1_212")
    global.msg[3] = scr_gettext("obj_darksans1_213")
    global.msg[4] = scr_gettext("obj_darksans1_214")
    global.msg[5] = scr_gettext("obj_darksans1_215")
    global.msg[6] = scr_gettext("obj_darksans1_216")
    global.msg[7] = scr_gettext("obj_darksans1_217")
    global.msg[8] = scr_gettext("obj_darksans1_218")
    global.msg[9] = scr_gettext("obj_darksans1_219")
    global.msg[10] = scr_gettext("obj_darksans1_220")
    global.msg[11] = scr_gettext("obj_darksans1_221")
    global.msg[12] = scr_gettext("obj_darksans1_222")
    global.msg[13] = scr_gettext("obj_darksans1_223")
    global.msg[14] = scr_gettext("obj_darksans1_224")
    global.msg[15] = scr_gettext("obj_darksans1_225")
    global.msg[16] = scr_gettext("obj_darksans1_226")
}
instance_create(0, 0, obj_dialoguer)
conversation = 6
