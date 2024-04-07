x += shudder
if (shudder < 0)
    shudder = (-((shudder + 2)))
else
    shudder = (-shudder)
alarm[0] = 2
if (shudder == 0)
{
    alarm[0] = 0
    return;
}
