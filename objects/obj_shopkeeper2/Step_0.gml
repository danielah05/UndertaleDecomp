d = 0
go = 0
if instance_exists(OBJ_WRITER)
{
    if (OBJ_WRITER.halt == 0)
        go = 1
}
if (pos >= 6)
    go = 1
if (go == 1)
{
    if (pos >= 3)
    {
        y = (ystart + 2)
        armx = 2
    }
    if (pos >= 6)
    {
        y = (ystart + 4)
        armx = 4
    }
    if (pos >= 9)
    {
        y = (ystart + 2)
        armx = 2
    }
    if (pos >= 12)
    {
        y = ystart
        pos = 0
        armx = 0
    }
    pos += 1
}
