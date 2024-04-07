hard = 0
image_speed = 0
visible = false
sprite_index = spr_whiteax2
image_alpha = 0
if (instance_number(object_index) > 1)
    axetype = 1
else
    axetype = 0
if (axetype == 0)
{
    x = (global.idealborder[0] - 130)
    image_index = 0
    hspeed = 0
}
else
{
    x = (global.idealborder[1] - 50)
    image_index = 1
    hspeed = 0
}
alarm[1] = 10
y = 309
if (x < 140)
    x = 99
else
    x = 350
dmg = 0
g = 0
hurted = 0
blconnum = 0
move = 0
