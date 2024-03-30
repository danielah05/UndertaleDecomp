move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), 9)
for (i = 0; i < 5; i += 1)
{
    gl = instance_create(x, y, obj_glydeshot)
    if instance_exists(gl)
        gl.direction = ((direction - 28) + (i * 14))
}
for (i = 0; i < 5; i += 1)
{
    gl = instance_create(x, y, obj_glydeshot)
    if instance_exists(gl)
    {
        gl.direction = ((direction - 28) + (i * 14))
        gl.speed -= 1.5
    }
}
for (i = 0; i < 5; i += 1)
{
    gl = instance_create(x, y, obj_glydeshot)
    if instance_exists(gl)
    {
        gl.direction = ((direction - 28) + (i * 14))
        gl.speed -= 3
    }
}
with (obj_glydeshot)
    friction = 0
