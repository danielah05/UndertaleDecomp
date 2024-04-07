if (global.facing != stepped)
{
    if (global.facing == Direction.Left)
    {
        other.y += 1
        stepped = 3
    }
    if (global.facing == Direction.Right)
    {
        other.y -= 1
        stepped = true
    }
}
