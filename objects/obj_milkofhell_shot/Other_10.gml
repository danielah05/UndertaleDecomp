splat = instance_create(x, y, obj_milkofhell_splatter)
splat.image_angle = image_angle
splat.image_xscale = image_xscale
splat.image_yscale = image_yscale
splat.speed = speed
splat.direction = direction
splat.friction = 2
repeat (8)
    instance_create(x, y, obj_milkofhell_drop)
instance_destroy()
