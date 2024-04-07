if (hspeed > 0)
{
    if (x > (obj_target.x + obj_target.sprite_width))
        xxx = 1
}
if (hspeed < 0)
{
    if (x < obj_target.x)
        xxx = 1
}
if (xxx == 1)
{
    global.damage = 0
    global.hurtanim[global.mytarget] = 5
    instance_destroy()
    return;
}
if (image_speed == 0)
{
    if control_check_pressed(InteractButton)
    {
        for (i = 0; i < 3; i += 1)
        {
            if (global.monster[i] == true)
            {
                mons = global.monsterinstance[i]
                hspeed = 0
                scr_attackcalc()
                global.damage = damage
                global.damage += random(2)
                myx = (x + (sprite_width / 2))
                myperfectx = (obj_target.x + (obj_target.sprite_width / 2))
                bonusfactor = abs((myx - myperfectx))
                if (bonusfactor == 0)
                    bonusfactor = 1
                global.stretch = ((obj_target.sprite_width - bonusfactor) / obj_target.sprite_width)
                if (bonusfactor <= 12)
                    global.damage = round((global.damage * 2.2))
                if (bonusfactor > 12)
                    global.damage = round(((global.damage * global.stretch) * 2))
                mons.takedamage = global.damage
                instance_create(((mons.x + (mons.sprite_width / 2)) - 5), (mons.y - 5), obj_slice)
                global.hurtanim[i] = 1
                image_speed = 0.4
            }
        }
    }
}
if (global.myfight != 1)
    instance_destroy()
