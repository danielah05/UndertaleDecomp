active += 1
if (active > 4)
{
    if (obj_mainchara.x > 316 && obj_mainchara.x < 1166 && fallen == 0)
    {
        global.interact = 1
        fallen = 1
        event_user(0)
    }
}
