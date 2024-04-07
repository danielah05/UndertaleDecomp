image_speed = 2
counter += 2
if (counter == 2 || counter == 3)
{
    if collision_rectangle((x + 91), (y + 93), (x + 128), (y + 158), obj_vsflowey_heart, 0, 1)
        event_user(12)
}
if (counter >= 4 && counter <= 8)
{
    if collision_rectangle((x + 88), (y + 68), (x + 128), (y + 158), obj_vsflowey_heart, 0, 1)
        event_user(12)
}
if (counter >= 9 && counter <= 12)
{
    if collision_rectangle((x + 80), (y + 44), (x + 128), (y + 158), obj_vsflowey_heart, 0, 1)
        event_user(12)
}
if (counter >= 13 && counter <= 23)
{
    if collision_rectangle((x + 70), (y + 28), (x + 118), (y + 158), obj_vsflowey_heart, 0, 1)
        event_user(12)
}
if (counter > 24)
{
    image_alpha -= 0.2
    if (image_alpha < 0.2)
        instance_destroy()
}
