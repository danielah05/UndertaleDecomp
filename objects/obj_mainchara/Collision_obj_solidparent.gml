// Original game checks for obj_solidnpcparent only
// Decompile checks for all colliders because event
// order might have changed, and this breaks the logic
#macro colliders_to_check [obj_solidparent, obj_solidnpcparent, obj_sdl, obj_sdr, obj_sul, obj_sur]

if (global.phasing == 0 && other.phase == 0)
{
    x = xprevious
    y = yprevious
    if (global.interact == 0)
    {
        if obj_time.up
        {
            if (collision_rectangle((x + 2), (y + 15), (x + 18), (y + 19), colliders_to_check, false, true) > 0)
            {
                if (obj_time.left && collision_line((bbox_left - 3), bbox_top, bbox_left, bbox_top, colliders_to_check, false, true) < 0)
                {
                    x -= 3
                    global.facing = Direction.Left
                }
                if (obj_time.right && collision_line((bbox_right + 3), bbox_top, bbox_right, bbox_top, colliders_to_check, false, true) < 0)
                {
                    x += 3
                    global.facing = Direction.Right
                }
            }
            else
            {
                y -= 3
                global.facing = Direction.Up
            }
        }
        if obj_time.down
        {
            if (collision_rectangle((x + 2), (y + 30), (x + 18), (y + 33), colliders_to_check, false, true) > 0)
            {
                if (obj_time.left && collision_line((bbox_left - 3), bbox_bottom, bbox_left, bbox_bottom, colliders_to_check, false, true) < 0)
                {
                    x -= 3
                    global.facing = Direction.Left
                }
                if (obj_time.right && collision_line((bbox_right + 3), bbox_bottom, bbox_right, bbox_bottom, colliders_to_check, false, true) < 0)
                {
                    x += 3
                    global.facing = Direction.Right
                }
            }
            else
            {
                y += 3
                global.facing = Direction.Down
            }
        }
    }
    moving = false
}
