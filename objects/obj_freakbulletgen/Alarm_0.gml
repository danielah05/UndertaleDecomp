dir = random(360)
x = (global.idealborder[0] + random((global.idealborder[1] - global.idealborder[0])))
y = (global.idealborder[2] + random((global.idealborder[3] - global.idealborder[2])))
if collision_rectangle((x - 10), (y - 10), (x + 10), (y + 10), obj_heart, 0, 1)
{
    x = ((obj_heart.x + 8) + lengthdir_x((24 + random(12)), dir))
    y = ((obj_heart.y + 8) + lengthdir_y((24 + random(12)), dir))
}
instance_create(x, y, obj_freakbullet)
alarm[0] = (3 + random(3))
