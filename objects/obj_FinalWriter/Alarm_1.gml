if (stringln > (at - 1))
{
    tchar = string_char_at(string0, at)
    string1 += tchar
    at += 1
    alarm[1] = typespeed
    if (tchar != " ")
    {
        caster_stop(w_sfx)
        caster_play(w_sfx, 0.9, 1.15)
    }
}
