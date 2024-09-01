// Daniela: code is exclusive to the xbox version
if can_interact
    event_inherited()
else
{
    unlock_timer--
    if (unlock_timer <= 0)
        can_interact = 1
}
