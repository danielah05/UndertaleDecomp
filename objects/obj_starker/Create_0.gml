subject = 287294723489372960000
if (FL_HaveUmbrella == 1)
{
	instance_destroy()
	return;
}
if instance_exists(obj_mainchara)
{
	obj_mainchara.usprite = spr_maincharau_stark
	obj_mainchara.rsprite = spr_maincharar_stark
	obj_mainchara.dsprite = spr_maincharad_stark
	obj_mainchara.lsprite = spr_maincharal_stark
	subject = obj_mainchara
}
