if (global.facing == Direction.Down)
    sprite_index = dsprite
if (global.facing == Direction.Right)
    sprite_index = rsprite
if (global.facing == Direction.Up)
    sprite_index = usprite
if (global.facing == Direction.Left)
    sprite_index = lsprite
if (collision_point((bbox_left - 3), (bbox_top - 3), obj_solidparent, 0, 1) == noone)
    crumpet = 1
else
    crumpet = 2
strumpet = bbox_top
trumpet = bbox_left
if (global.inbattle == true)
{
    if (FL_InBattle == false)
    {
        instance_create(0, 0, obj_musfadein)
        caster_resume(global.currentsong)
    }
    room_persistent = false
    global.inbattle = false
    if (global.specialbattle == 0)
        global.interact = 0
    depth = 100
    if (FL_AreaKillsPointer != KillsPointer_Invalid)
    {
        if (FL_KillsCounter != global.kills)
            global.flag[FL_AreaKillsPointer] += (global.kills - FL_KillsCounter)
    }
}
if obj_time.left
{
    if (movement == 1)
    {
        turned = 1
        if (xprevious == (x + 3))
            x -= 2
        else
            x -= 3
        if (moving != true)
            image_index = 1
        moving = true
        // Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
		if (global.debug == true)
        {
            if keyboard_check(vk_backspace)
                x -= 5
        }
        image_speed = 0.2
        if (obj_time.up && global.facing == Direction.Up)
            turned = 0
        if (obj_time.down && global.facing == Direction.Down)
            turned = 0
        if (turned == 1)
            global.facing = Direction.Left
    }
}
if obj_time.up
{
    if (movement == 1)
    {
        turned = 1
        y -= 3
        // Daniela: debug code was removed in the xbox version, keeping it here for debugging purposes
		if (global.debug == true)
        {
            if keyboard_check(vk_backspace)
                y -= 5
        }
        if (moving != true)
            image_index = 1
        moving = true
        image_speed = 0.2
        if (obj_time.right && global.facing == Direction.Right)
            turned = 0
        if (obj_time.left && global.facing == Direction.Left)
            turned = 0
        if (turned == 1)
            global.facing = Direction.Up
    }
}
if obj_time.right
{
    if (movement == 1)
    {
        if (obj_time.left == 0)
        {
            turned = 1
            if (xprevious == (x - 3))
                x += 2
            else
                x += 3
            if (global.debug == true)
            {
                if keyboard_check(vk_backspace)
                    x += 5
            }
            moving = true
            image_speed = 0.2
            if (moving != true)
                image_index = 1
            if (obj_time.up && global.facing == Direction.Up)
                turned = 0
            if (obj_time.down && global.facing == Direction.Down)
                turned = 0
            if (turned == 1)
                global.facing = Direction.Right
        }
    }
}
if obj_time.down
{
    if (movement == 1)
    {
        if (obj_time.up == 0)
        {
            turned = 1
            y += 3
            if (global.debug == true)
            {
                if keyboard_check(vk_backspace)
                    y += 5
            }
            if (moving != true)
                image_index = 1
            moving = true
            image_speed = 0.2
            if (obj_time.right && global.facing == Direction.Right)
                turned = 0
            if (obj_time.left && global.facing == Direction.Left)
                turned = 0
            if (turned == 1)
                global.facing = Direction.Down
        }
    }
}
if control_check_pressed(InteractButton)
    event_user(0)
if control_check_pressed(MenuButton)
    event_user(2)
with (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_doorparent, 0, 0))
    event_user(9)
if (instance_exists(obj_battler) == false)
{
    scr_depth()
    if (FL_HaveUmbrella == true && dsprite == spr_maincharad_umbrella)
        depth = (50000 - ((y * 10) + 300))
}
// Daniela: extra collision check stuff added into the xbox version, most likely to fix the same issue we had with the decomp
if (global.phasing == 0)
{
    if (global.interact == 0)
    {
        if place_meeting(x, y, obj_solidnpcparent)
        {
            x = xprevious
            y = yprevious
            moving = false
        }
        if place_meeting(x, y, obj_solidparent)
        {
            x = xprevious
            y = yprevious
            moving = false
            if obj_time.up
            {
                if (collision_rectangle((x + 2), (y + 15), (x + 18), (y + 19), obj_solidparent, 0, 1) > 0)
                {
                    if (obj_time.left && collision_line((bbox_left - 3), bbox_top, bbox_left, bbox_top, obj_solidparent, false, true) < 0)
                    {
                        x -= 3
                        global.facing = 3
                    }
                    if (obj_time.right && collision_line((bbox_right + 3), bbox_top, bbox_right, bbox_top, obj_solidparent, false, true) < 0)
                    {
                        x += 3
                        global.facing = 1
                    }
                }
                else
                {
                    y -= 3
                    global.facing = 2
                }
            }
            if obj_time.down
            {
                if (collision_rectangle((x + 2), (y + 30), (x + 18), (y + 33), obj_solidparent, 0, 1) > 0)
                {
                    if (obj_time.left && collision_line((bbox_left - 3), bbox_bottom, bbox_left, bbox_bottom, obj_solidparent, false, true) < 0)
                    {
                        x -= 3
                        global.facing = 3
                    }
                    if (obj_time.right && collision_line((bbox_right + 3), bbox_bottom, bbox_right, bbox_bottom, obj_solidparent, false, true) < 0)
                    {
                        x += 3
                        global.facing = 1
                    }
                }
                else
                {
                    y += 3
                    global.facing = 0
                }
            }
            return;
        }
        if place_meeting(x, y, obj_sdr)
        {
            if place_meeting(x, y, obj_solidparent)
                return;
            moving = false
            if (global.facing == 1)
            {
                if (collision_point((x + 2), (y - 2), obj_solidparent, 0, 1) == -4)
                {
                    x = (xprevious + 3)
                    y = (yprevious - 3)
                }
                else
                    x = xprevious
            }
            if (global.facing == 0)
            {
                if (collision_point((x - 3), (y + 3), obj_solidparent, 0, 1) == -4)
                {
                    x = (xprevious - 3)
                    y = (yprevious + 3)
                }
                else
                    y = yprevious
            }
            if (global.facing == 2)
            {
                x = xprevious
                y = (yprevious - 3)
            }
            if (global.facing == 3)
            {
                y = yprevious
                x = (xprevious - 3)
            }
        }
        if place_meeting(x, y, obj_sur)
        {
            if (global.facing == 1)
            {
                if (collision_point((x + 3), (y + 3), obj_solidparent, 0, 1) == -4)
                {
                    x = (xprevious + 3)
                    y = (yprevious + 3)
                }
                else
                    x = xprevious
            }
            if (global.facing == 2)
            {
                if (collision_point((x - 3), (y - 3), obj_solidparent, 0, 1) == -4)
                {
                    x = (xprevious - 3)
                    y = (yprevious - 3)
                }
                else
                    y = yprevious
            }
            if (global.facing == 0)
            {
                x = xprevious
                y = (yprevious + 3)
            }
            if (global.facing == 3)
            {
                y = yprevious
                x = (xprevious - 3)
            }
        }
        if place_meeting(x, y, obj_sul)
        {
            if (global.facing == 3)
            {
                if (collision_point((x - 3), (y + 3), obj_solidparent, 0, 1) == -4)
                {
                    x = (xprevious - 3)
                    y = (yprevious + 3)
                }
                else
                    x = xprevious
            }
            if (global.facing == 2)
            {
                if (collision_point((x + 3), (y - 3), obj_solidparent, 0, 1) == -4)
                {
                    x = (xprevious + 3)
                    y = (yprevious - 3)
                }
                else
                    y = yprevious
            }
            if (global.facing == 0)
            {
                x = xprevious
                y = (yprevious + 3)
            }
            if (global.facing == 1)
            {
                y = yprevious
                x = (xprevious + 3)
            }
        }
        if place_meeting(x, y, obj_sdl)
        {
            if place_meeting(x, y, obj_solidparent)
                return;
            if (global.facing == 3)
            {
                if (collision_point((x - 2), (y - 2), obj_solidparent, 0, 1) == -4)
                {
                    x = (xprevious - 3)
                    y = (yprevious - 3)
                }
                else
                    x = xprevious
            }
            if (global.facing == 0)
            {
                if (collision_point((x + 3), (y + 3), obj_solidparent, 0, 1) == -4)
                {
                    x = (xprevious + 3)
                    y = (yprevious + 3)
                }
                else
                    y = yprevious
            }
            if (global.facing == 2)
            {
                x = xprevious
                y = (yprevious - 3)
            }
            if (global.facing == 1)
            {
                y = yprevious
                x = (xprevious + 3)
            }
        }
    }
}
