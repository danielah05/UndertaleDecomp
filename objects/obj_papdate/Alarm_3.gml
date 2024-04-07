if (sha == 0)
    sha = x
x = (sha + shudder)
if (shudder < 0)
    shudder = (-((shudder + 1)))
else
    shudder = (-shudder)
if (shudder == 0)
{
    sha = 0
    cn += 1
    return;
}
alarm[3] = 3
if (cn > 60)
    alarm[3] = 2
if (cn > 71)
    alarm[3] = 1
