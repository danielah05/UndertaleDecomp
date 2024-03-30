obj_spinbullet_huge.centerx = centerx
obj_spinbullet_huge.centery = centery
with (obj_spinbullet_huge)
{
    sprite_index = spr_spinbullet_cheat
    move_towards_point(centerx, centery, -1.2)
    gravity_direction = point_direction(x, y, centerx, centery)
    gravity = 0.015
}
