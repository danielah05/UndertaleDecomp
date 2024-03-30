if (sl == 1)
{
    if (obj_mainchara.xprevious == (obj_mainchara.x - 3) || obj_mainchara.xprevious == (obj_mainchara.x - 2))
        obj_mainchara.x -= 1
    if (obj_mainchara.xprevious == (obj_mainchara.x + 3) || obj_mainchara.xprevious == (obj_mainchara.x + 2))
        obj_mainchara.x += 1
    if (obj_mainchara.yprevious == (obj_mainchara.y - 3) || obj_mainchara.yprevious == (obj_mainchara.y - 2))
        obj_mainchara.y -= 1
    if (obj_mainchara.yprevious == (obj_mainchara.y + 3) || obj_mainchara.yprevious == (obj_mainchara.y + 2))
        obj_mainchara.y += 1
}
