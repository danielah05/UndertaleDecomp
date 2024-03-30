on = 0
if (x > global.idealborder[0] && x < global.idealborder[1])
    on = 1
if (y >= (obj_dborder.y - 20) && y < obj_dborder.y && on == 1)
{
    bomb = instance_create(x, y, obj_incendiary)
    if instance_exists(bomb)
    {
        bomb.number = 1
        bomb.hspeed = hspeed
        bomb.dmg = dmg
    }
    instance_destroy()
}
