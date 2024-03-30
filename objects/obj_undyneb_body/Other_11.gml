movetype = 1
legs.image_index = 1
vspeed = (-9 - random(4))
hspeed = (random(6) - 3)
gravity = 1.3
gravity_direction = 270
jumpno += 1
y = ystart
if (jumpno == 3)
{
    vspeed = -12
    hspeed = ((xstart - x) / 18)
}
air = 0
larm.hspeed = (hspeed / 0.93)
larm.vspeed = (vspeed - 2)
larm.gravity = (gravity + 0.1)
larm.gravity_direction = 270
rarm.hspeed = (hspeed / 1.1)
rarm.vspeed = (vspeed - 2)
rarm.gravity = (gravity + 0.1)
rarm.gravity_direction = 270
legs.hspeed = (hspeed / 1.1)
legs.vspeed = (vspeed - 2)
legs.gravity = (gravity + 0.1)
legs.gravity_direction = 270
