if instance_exists(blt_muscbul)
    blt_muscbul.vspeed -= 0.04
global.turntimer -= 1
siner += 1
if (global.turntimer < 8)
{
    room_goto(global.currentroom)
    global.invc = 0
}
if (global.turntimer < 12)
    instance_create(0, 0, obj_unfader)
