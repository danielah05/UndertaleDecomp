with (col2)
    instance_destroy()
with (obj_blockbullet)
    down = 1
if (global.invc < 1)
{
    with (obj_undyneboss)
        hitno += 1
}
with (obj_undyne_ex)
    hitno += 1
scr_damagestandard(BulletType.Normal, 0, 0, 0, 0)
