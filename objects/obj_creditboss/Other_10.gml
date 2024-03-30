if (obj_creditsloader.credno < (obj_creditsloader.credamt - 1))
{
    cb = instance_create(x, y, obj_creditbullet)
    cb.text = obj_creditsloader.creditname[obj_creditsloader.credno]
    obj_creditsloader.credno += 1
}
