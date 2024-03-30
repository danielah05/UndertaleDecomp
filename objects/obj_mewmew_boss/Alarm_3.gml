if (true_battle >= 1)
{
    with (obj_mewmew_body)
        hitcon = 1
    if (true_battle == 2)
    {
        with (obj_mewmew_body)
            hit_special = 1
    }
    if (true_battle == 3)
    {
        with (obj_mewmew_body)
            hit_special = 2
        dmgwriter = instance_create(((x + (sprite_width / 2)) - 80), (y + 180), obj_dmgwriter)
        global.damage = (867 + floor(random(123)))
        with (dmgwriter)
        {
            dmg = global.damage
            drawbar = 0
        }
    }
}
else
{
    global.myfight = 9
    true_con = 0
}
