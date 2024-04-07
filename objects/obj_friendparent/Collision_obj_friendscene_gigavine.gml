if (shock == 0)
{
    snd_play(snd_damage)
    shk = instance_create(x, y, obj_objshake)
    shk.obj = object_index
    shock = 1
}
