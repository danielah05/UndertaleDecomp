if (col == 0)
{
    with (other.id)
    {
        if (eligible == 1)
            event_user(0)
    }
    snd_play(snd_noise)
    event_user(1)
}
