with (blconwriter)
    instance_destroy()
global.msc = 0
global.msg[0] = scr_gettext("obj_floweybattle1_268")
global.msg[1] = scr_gettext("obj_floweybattle1_269")
global.msg[2] = scr_gettext("obj_floweybattle1_270")
global.msg[3] = scr_gettext("obj_floweybattle1_271")
global.msg[4] = scr_gettext("obj_floweybattle1_272")
global.msg[5] = scr_gettext("obj_floweybattle1_273")
global.msg[6] = scr_gettext("obj_floweybattle1_274")
global.msg[7] = scr_gettext("obj_floweybattle1_275")
global.msg[8] = scr_gettext("obj_floweybattle1_276")
global.msg[9] = scr_gettext("obj_floweybattle1_277")
global.msg[10] = scr_gettext("obj_floweybattle1_278")
funwriter = instance_create((obj_blconwdflowey.x + 40), (obj_blconwdflowey.y + 10), OBJ_INSTAWRITER)
sprite_index = spr_floweynice
image_index = 1
image_speed = 0
conversation = 9.4
for (i = 0; i != 5; i += 1)
{
    ddd = instance_find(obj_friendlypellet, i)
    ddd.x = ddd.blonicx
    ddd.y = ddd.blonicy
    ddd.attackyou = 1
}
