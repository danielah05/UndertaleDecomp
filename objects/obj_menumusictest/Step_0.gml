if obj_time.left
{
    dongusvol -= 0.02
    caster_set_volume(dangus, dongusvol)
    caster_set_volume(dongus, (dongusvol - 1))
    caster_set_volume(dungus, (dongusvol - 2))
}
if obj_time.right
{
    dongusvol += 0.02
    caster_set_volume(dangus, dongusvol)
    caster_set_volume(dongus, (dongusvol - 1))
    caster_set_volume(dungus, (dongusvol - 2))
}
