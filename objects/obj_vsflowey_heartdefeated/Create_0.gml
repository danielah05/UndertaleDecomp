remx = obj_vsflowey_heart.x
remy = obj_vsflowey_heart.y
bb = sprite_create_from_screen_x(0, 0, 640, 480, false, false, 0, 0)
caster_free(all)
with (all)
{
    x = -500
    y = -500
}
with (obj_flowey_writer)
    instance_destroy()
instance_deactivate_all(true)
instance_activate_object(obj_time)
x = remx
y = remy
drawbb = 1
alarm[0] = 20
image_speed = 0
gmusic = caster_load("music/gameover.ogg")
dingus = 0
currentvol = 1
con = 0
ll = (global.floss + 1)
ossafe_ini_open("undertale.ini")
ini_write_real("FFFFF", "D", ll)
ossafe_ini_close()
ossafe_savedata_save()
do_restart = 0
in_fakecrash = 0
force_black_screen = 0
