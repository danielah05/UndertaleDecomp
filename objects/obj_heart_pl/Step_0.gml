if (x > global.idealborder[0] && obj_time.left)
    x -= 4
if (x < (global.idealborder[1] - 16) && obj_time.right)
    x += 4
if (y > global.idealborder[2] && obj_time.up)
    y -= 4
if (y < (global.idealborder[3] - 16) && obj_time.down)
    y += 4
shot = 0
if (instance_exists(obj_heartshot) == false || charge < 0)
    shot = 1
if (keyboard_check_pressed(ord("Z")) && shot == 1)
{
    instance_create((x + 4), (y + 2), obj_heartshot)
    charge = 30
}
charge -= 1
global.testinv -= 1
if (global.testinv > 0)
    image_speed = 1
else
{
    image_speed = 0
    image_index = 0
}
