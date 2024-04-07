if (credno < (credamt - 1))
{
    cb = instance_create(x, y, obj_creditbullet)
    cb.text = creditname[credno]
    credno += 1
}
