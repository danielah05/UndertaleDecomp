alarm[0] = factor
tt = choose(1, 2, 3, 4)
if (tt == 1)
{
    hand2 = instance_create(104, 146, obj_handbullet_new)
    hand2.type = 1
}
if (tt == 2)
{
    hand1 = instance_create(440, 382, obj_handbullet_new)
    hand1.type = 2
}
if (tt == 3)
{
    hand4 = instance_create((global.idealborder[1] - 50), (global.idealborder[2] - 90), obj_handbullet_new)
    hand4.type = 3
}
if (tt == 4)
{
    hand3 = instance_create((global.idealborder[0] - 10), (global.idealborder[3] + 10), obj_handbullet_new)
    hand3.type = 4
}
