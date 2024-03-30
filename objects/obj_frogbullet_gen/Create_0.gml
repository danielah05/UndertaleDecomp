dmg = 1
sum = scr_monstersum()
alarm[0] = 1
fr1 = instance_create((global.idealborder[0] + (c_borderwidth(0) / 2)), (global.idealborder[3] - 20), obj_frogbullet_ex)
fr1.side = 0
fr1.image_angle = 0
fr1.lazy = 0
if (sum == 4)
{
    no2 = choose(1, 2, 3)
    fr2 = instance_create((global.idealborder[0] + (c_borderwidth(0) / 2)), (global.idealborder[2] + 20), obj_frogbullet_ex)
    fr2.side = no2
    fr2.image_angle = (no2 * -90)
    if (no2 == 2)
    {
        fr2.x = (global.idealborder[0] + (c_borderwidth(0) / 2))
        fr2.y = (global.idealborder[2] + 20)
    }
    if (no2 == 1)
    {
        fr2.x = (global.idealborder[0] + 20)
        fr2.y = (global.idealborder[2] + (c_borderheight(0) / 2))
    }
    if (no2 == 3)
    {
        fr2.x = (global.idealborder[1] - 20)
        fr2.y = (global.idealborder[2] + (c_borderheight(0) / 2))
    }
    if (no2 == 3)
        no3 = choose(1, 2)
    if (no2 == 1)
        no3 = choose(2, 3)
    if (no2 == 2)
        no3 = choose(1, 3)
    if (no2 == 99)
    {
        if (no2 != 1)
            no3 = 1
        fr3 = instance_create(320, 270, obj_frogbullet_ex)
        fr3.side = no3
        fr3.image_angle = (no3 * -90)
        if (no3 == 2)
        {
            fr3.x = 300
            fr3.y = 270
        }
        if (no3 == 1)
        {
            fr3.x = 270
            fr3.y = 320
        }
        if (no3 == 3)
        {
            fr3.x = 380
            fr3.y = 320
        }
    }
}
