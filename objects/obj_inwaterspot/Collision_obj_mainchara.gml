if (other.inwater == 0 && check == 0 && wbuffer <= 0)
{
    other.inwater = 1
    with (obj_inwaterspot)
    {
        check = 2
        wbuffer = 3
    }
    check = 1
    wbuffer = 2
}
