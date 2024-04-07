if (type == 1)
{
    hand1 = instance_create(440, 352, obj_handbullet_new)
    hand1.type = 2
    hand2 = instance_create(104, 176, obj_handbullet_new)
    hand2.type = 1
}
if (type == 2)
{
    hand1 = instance_create(440, 382, obj_handbullet_new)
    hand1.type = 2
    hand2 = instance_create(104, 146, obj_handbullet_new)
    hand2.type = 1
    hand3 = instance_create((global.idealborder[0] - 10), 552, obj_handbullet_new)
    hand3.type = 4
    hand4 = instance_create((global.idealborder[1] - 50), -50, obj_handbullet_new)
    hand4.type = 3
}
if (type == 3)
{
    hand1 = instance_create(440, 382, obj_handbullet_new)
    hand1.type = 2
    hand2 = instance_create(-250, 196, obj_handbullet_new)
    hand2.type = 5
    hand3 = instance_create((global.idealborder[0] - 10), 512, obj_handbullet_new)
    hand3.type = 4
    hand4 = instance_create((global.idealborder[1] - 50), -280, obj_handbullet_new)
    hand4.type = 3
}
