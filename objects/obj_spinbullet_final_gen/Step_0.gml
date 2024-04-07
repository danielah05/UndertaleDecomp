repeat (1)
{
    if (counter == (num * trip) && num < maxnum)
    {
        xx = lengthdir_x(radius, (add_dir + (((num / maxnum) * 360) * side)))
        yy = lengthdir_y(radius, (add_dir + (((num / maxnum) * 360) * side)))
        spinbullet[num] = instance_create((centerx + xx), (centery + yy), obj_spinbullet_huge)
        spinbullet[num].trick = 2
        num += 1
    }
    counter += 1
}
