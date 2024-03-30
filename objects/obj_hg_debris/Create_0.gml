side = choose(0, 1, 2, 3)
if (side == 0)
{
    x = (random((room_width + 160)) - 80)
    y = (room_height + 80)
}
if (side == 1)
{
    x = (random((room_width + 160)) - 80)
    y = -80
}
if (side == 2)
{
    y = (random((room_height + 160)) - 80)
    x = -80
}
if (side == 3)
{
    y = (random((room_height + 160)) - 80)
    x = (room_width + 80)
}
size = 2
friction = -0.3
move_towards_point((room_width / 2), (room_height / 2), 2)
