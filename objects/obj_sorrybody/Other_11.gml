if (ch == 1)
{
    if (obj_heart.x == obj_heart.xprevious && obj_heart.y == obj_heart.yprevious)
        scr_damagestandard_x()
}
if (ch == 0)
{
    if (obj_heart.x != obj_heart.xprevious || obj_heart.y != obj_heart.yprevious)
        scr_damagestandard_x()
}
