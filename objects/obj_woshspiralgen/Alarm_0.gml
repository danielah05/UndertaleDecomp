alarm[0] = rate
m = instance_create(x, y, blt_growbullet)
if instance_exists(m)
{
    m.dmg = dmg
    if (sum == 1)
    {
        m.speed /= 1.1
        m.friction /= 1.25
    }
    if (blue == 1)
    {
        m.image_index = 1
        m.blue = 1
    }
    m.direction = direction
    if (green == 0 && cleaner == 1)
    {
        m.image_index = 2
        m.blue = 3
        m.friction /= 3
        m.sprite_index = spr_waterbul_mask
    }
}
green -= 1
if (green < 0)
{
    if (sum > 1)
        green = 4
    if (sum == 1)
        green = 9
}
