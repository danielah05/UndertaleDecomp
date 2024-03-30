other.moving = false
if (push == 0)
{
    if (global.facing == Direction.Right)
    {
        x += 3
        other.x += 3
        other.moving = true
    }
    if (global.facing == Direction.Left)
    {
        if (x > xstart)
        {
            x -= 3
            other.x -= 3
            other.moving = true
        }
    }
}
