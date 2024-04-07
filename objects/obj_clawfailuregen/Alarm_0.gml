if (type == 0)
{
    xx = ((choose(1, -1) * (50 + random(240))) + obj_heart.x)
    yy = ((global.idealborder[2] + 20) + random(((global.idealborder[3] - global.idealborder[2]) - 40)))
    instance_create(xx, yy, obj_clawbullet_failure)
}
if (type == 1)
{
    repeat (1 + random(7))
    {
        xx = ((choose(1, -1) * (50 + random(50))) + obj_heart.x)
        yy = (global.idealborder[2] - random(30))
        instance_create(xx, yy, obj_clawbullet_gravityfailure)
    }
}
if (type == 2)
{
    repeat (1 + random(7))
    {
        xx = ((choose(1, -1) * (200 + random(50))) + obj_heart.x)
        yy = (global.idealborder[2] - random(30))
        gr = instance_create(xx, yy, obj_clawbullet_gravityfailure)
        gr.gravity_direction = 1
    }
}
