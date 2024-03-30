global.msc = 0
con = 0
global.msg[0] = scr_gettext("obj_f_frasier_32")
global.msg[1] = scr_gettext("obj_f_frasier_33")
global.msg[2] = scr_gettext("obj_f_frasier_34")
global.msg[3] = scr_gettext("obj_f_frasier_35")
global.msg[4] = scr_gettext("obj_f_frasier_36")
global.typer = 117
if (global.floss == 0)
    global.msg[0] = scr_gettext("obj_f_frasier_40")
if (global.floss == 1)
{
    global.msg[0] = scr_gettext("obj_f_frasier_43")
    global.msg[1] = scr_gettext("obj_f_frasier_44")
    global.msg[2] = scr_gettext("obj_f_frasier_45")
}
if (global.floss == 2)
    global.msg[0] = scr_gettext("obj_f_frasier_49")
if (global.floss == 3)
{
    global.msg[0] = scr_gettext("obj_f_frasier_53")
    global.msg[1] = scr_gettext("obj_f_frasier_54")
}
if (global.floss == 4)
{
    global.msg[0] = scr_gettext("obj_f_frasier_58")
    global.msg[1] = scr_gettext("obj_f_frasier_59")
    global.msg[2] = scr_gettext("obj_f_frasier_60")
}
if (global.floss == 5)
    global.msg[0] = scr_gettext("obj_f_frasier_64")
if (global.floss == 6)
    global.msg[0] = scr_gettext("obj_f_frasier_68")
if (global.floss == 7)
{
    global.msg[0] = scr_gettext("obj_f_frasier_72")
    global.msg[1] = scr_gettext("obj_f_frasier_73")
}
if (global.floss == 8)
{
    global.msg[0] = scr_gettext("obj_f_frasier_77")
    global.msg[1] = scr_gettext("obj_f_frasier_78")
}
if (global.floss >= 9)
    global.msg[0] = scr_gettext("obj_f_frasier_82")
instance_create(x, y, obj_flowey_writer)
