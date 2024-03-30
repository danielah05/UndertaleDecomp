if (attack == 1)
{
    counter += 1
    if (counter == 10)
    {
        instance_create(obj_floweyx_flipeye.x, obj_floweyx_flipeye.y, obj_eyewarning)
        instance_create((obj_floweyx_flipeye.x + obj_floweyx_flipeye.op), obj_floweyx_flipeye.y, obj_eyewarning)
    }
    if (counter == 20)
    {
        with (obj_floweyx_flipeye)
            event_user(1)
    }
    if (counter >= 22)
        counter = 16
}
if (attack == 2)
{
    counter += 1
    if (counter == 14)
    {
        with (obj_floweyx_lefteye)
            event_user(1)
    }
    if (counter >= 16)
        counter = 13
}
if (attack == 3)
{
    counter += 1
    counter2 += 1
    if (counter > 20)
        instance_create((110 + random(400)), 200, obj_gigavine_preview)
    if (counter > 40)
        counter = 0
    if (counter2 == 90)
    {
        with (obj_floweyx_mouth)
            event_user(1)
        counter2 = -999
    }
}
if (attack == 4)
{
    counter += 1
    counter2 += 1
    if (counter2 < 90)
    {
        if (counter == 8)
            instance_create(0, 0, obj_spinbullet_huge_gen_preview)
    }
    if (counter >= 16)
        counter = -5
}
if (attack == 5)
{
    counter += 1
    counter2 += 1
    if (counter2 < 100)
    {
        if (counter == 10)
        {
            instance_create((100 + random(420)), -100, obj_floweynuke)
            instance_create((100 + random(420)), -100, obj_floweynuke)
        }
        if (counter == 12)
        {
            var gn = instance_create((-20 + random(130)), -100, obj_floweynuke)
            gn.vspeed = 16
        }
        if (counter == 14)
            instance_create(((room_width + 20) - random(130)), -100, obj_floweynuke)
        if (counter >= 18)
            counter = 9
    }
}
if (attack == 6)
{
    counter += 1
    if (counter == 12)
        instance_create(random(530), 140, obj_mouthball)
    if (counter == 24)
        instance_create(random(530), 140, obj_mouthball)
    if (counter == 36)
        instance_create(random(530), 140, obj_mouthball)
}
if (attack == 7)
{
    counter2 += 1
    counter += 1
    if (counter < 100)
    {
        if (counter == 16)
            instance_create(0, (200 + random(280)), obj_f_handgun)
        if (counter >= 20)
            counter = 15
    }
}
if (attack == 8)
{
    counter += 1
    if (counter == 2)
    {
        with (obj_floweyarm)
            event_user(6)
        v_side = choose(0, 1)
        if (v_side == 1)
        {
            if (leftarm.acon == 0)
            {
                with (leftarm)
                    event_user(1)
            }
            else
            {
                with (rightarm)
                    event_user(1)
            }
        }
        if (v_side == 0)
        {
            if (rightarm.acon == 0)
            {
                with (rightarm)
                    event_user(1)
            }
            else
            {
                with (leftarm)
                    event_user(1)
            }
        }
    }
}
if (attack == 9)
{
    counter += 1
    if (counter == 18)
    {
        instance_create(110, 140, obj_floweyx_flamethrower)
        instance_create(530, 140, obj_floweyx_flamethrower)
    }
    if (counter >= 93)
    {
        if instance_exists(obj_floweyx_flamethrower)
            obj_floweyx_flamethrower.con = 3
    }
}
if (attack == 20)
{
    counter += 1
    counter2 += 1
    if (counter > 20)
    {
        var v = instance_create((110 + random(400)), 200, obj_gigavine_preview)
        v.memorymode = 1
    }
    if (counter > 40)
        counter = 0
    if (counter2 == 30)
    {
        with (obj_flowey_master)
            event_user(4)
        nowhp = global.my_hp
    }
    if (counter2 == 70)
    {
        if (global.my_hp >= nowhp)
        {
            with (obj_flowey_master)
                event_user(5)
        }
    }
}
if (attack == 21)
{
    if (counter2 == 15)
        checkx1 = obj_vsflowey_heart.x
    counter += 1
    counter2 += 1
    if (counter2 < 40)
    {
        if (counter == 14)
        {
            with (obj_floweyx_lefteye)
                event_user(1)
        }
        if (counter >= 16)
            counter = 13
    }
    if (counter2 == 45)
        checkx2 = obj_vsflowey_heart.x
    if (counter2 > 50 && counter2 < 69)
    {
        v = instance_create((110 + random(400)), 200, obj_gigavine_preview)
        if (checkx2 < checkx1)
            v.direction -= 12
        if (checkx2 > checkx1)
            v.direction += 12
        v.memorymode = 1
    }
    if (counter2 == 40)
    {
        nowhp = global.my_hp
        with (obj_flowey_master)
            event_user(4)
        with (obj_eyeshot_a)
            memorymode = 1
    }
    if (counter2 == 70)
    {
        if (global.my_hp >= nowhp)
        {
            with (obj_flowey_master)
                event_user(5)
        }
        with (obj_eyeshot_a)
            memorymode = 0
    }
}
if (attack == 22)
{
    counter += 1
    counter2 += 1
    if (counter2 < 70)
    {
        if (counter == 32)
        {
            with (obj_floweyx_lefteye)
                event_user(1)
        }
        if (counter >= 36)
            counter = 31
    }
}
if (attack == 23)
{
    counter += 1
    counter += 1
    if (counter == 30)
    {
        instance_create(obj_floweyx_flipeye.x, obj_floweyx_flipeye.y, obj_eyewarning)
        instance_create((obj_floweyx_flipeye.x + obj_floweyx_flipeye.op), obj_floweyx_flipeye.y, obj_eyewarning)
    }
    if (counter == 40 && counter2 < 80)
    {
        with (obj_floweyx_flipeye)
            event_user(1)
    }
    if (counter >= 42)
        counter = 32
}
if (attack == 99)
{
    counter += 1
    if (counter == 2)
    {
        with (obj_floweyx_mouth)
            event_user(1)
    }
}
