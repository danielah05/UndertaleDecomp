stringln = string_length(string0)
string1 = ""
tchar = string_char_at(string0, at)
string1 += tchar
at += 1
alarm[1] = typespeed
active = true
if (tchar != " ")
{
    snd_stop(snd_txtasr2)
    snd_play(snd_txtasr2)
}
