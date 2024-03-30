if (on <= 0)
    image_index = 0
if (on > 0)
    image_index = 1
on -= 1
if (on > 0)
{
    if control_check_pressed(InteractButton)
        event_user(0)
}
