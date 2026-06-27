if global.panic && !create
{
	with(instance_create_depth(x, y, depth, obj_reverseminipillar))
	{
		image_xscale = other.image_xscale
		image_yscale = other.image_yscale
		create = true
	}
	instance_destroy(id)
}