for (i = 0; i < (wd / 2); i += 1)
{
    if (ossafe_file_text_read_string(file) == "1")
        instance_create(((x + (i * 2)) - 2), (y + (line * 4)), obj_blkpxl0tall)
    ossafe_file_text_readln(file)
}
if (myvapor == 0)
{
    line += 1
    for (i = 0; i < (wd / 2); i += 1)
    {
        if (ossafe_file_text_read_string(file) == "1")
            instance_create((x + (i * 2)), (y + (line * 4)), obj_blkpxl0tall)
        ossafe_file_text_readln(file)
    }
}
line += 1
if (line > ((ht / 2) - 4))
{
    ossafe_file_text_close(file)
    instance_destroy()
    return;
}
alarm[0] = (1 + myvapor)
if (myvapor > 1)
    snd_play(snd_chug)
