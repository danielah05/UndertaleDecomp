if (global.phasing == 0 && other.phase == 0)
{
    x = xprevious;
    y = yprevious;
    
    if (global.interact == 0)
    {
        if (obj_time.up)
        {
            if (collision_rectangle(x + 2, y + 15, x + 18, y + 19, obj_solidparent, 0, 1) > 0)
            {
                if (obj_time.left && collision_line(bbox_left - 3, bbox_top, bbox_left, bbox_top, obj_solidparent, false, true) < 0)
                {
                    x -= 3;
                    global.facing = Direction.Left;
                }
                
                if (obj_time.right && collision_line(bbox_right + 3, bbox_top, bbox_right, bbox_top, obj_solidparent, false, true) < 0)
                {
                    x += 3;
                    global.facing = Direction.Right;
                }
            }
            else
            {
                y -= 3;
                global.facing = Direction.Up;
            }
        }
        
        if (obj_time.down)
        {
            if (collision_rectangle(x + 2, y + 30, x + 18, y + 33, obj_solidparent, 0, 1) > 0)
            {
                if (obj_time.left && collision_line(bbox_left - 3, bbox_bottom, bbox_left, bbox_bottom, obj_solidparent, false, true) < 0)
                {
                    x -= 3;
                    global.facing = Direction.Left;
                }
                
                if (obj_time.right && collision_line(bbox_right + 3, bbox_bottom, bbox_right, bbox_bottom, obj_solidparent, false, true) < 0)
                {
                    x += 3;
                    global.facing = Direction.Right;
                }
            }
            else
            {
                y += 3;
                global.facing = Direction.Down;
            }
        }
    }
    
    moving = 0;
}
