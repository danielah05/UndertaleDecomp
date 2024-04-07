no = 0
dp = 0
nod = 0
if (FL_EndogenyEvent > 0)
{
    instance_destroy()
    return;
}
repeat (30)
{
    dp[no] = instance_create(0, 0, obj_amalgam_dogpiece)
    no += 1
}
image_speed = 0
con = 0
size = 0
drawball = 0
dx = x
dy = y
banim = 0
