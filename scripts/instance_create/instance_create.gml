function instance_create(argument0, argument1, argument2)
{
	var myDepth = object_get_depth(argument2);
	return instance_create_depth(argument0, argument1, myDepth, argument2);
}

function instance_create_unique(argument0, argument1, argument2)
{
    if (instance_exists(argument2))
        return -4;
    
    var b = instance_create(argument0, argument1, argument2);
    return b;
}

function instance_create_persistent(argument0, argument1, argument2)
{
    if (instance_exists(argument2))
        exit;
    
    with (instance_create(argument0, argument1, argument2))
        persistent = true;
}

function Wave(arg0, arg1, arg2, arg3, arg4 = -4)
{
    var a4 = (arg1 - arg0) * 0.5;
    var t = current_time;
    
    if (arg4 != -4)
        t = arg4;
    
    return arg0 + a4 + (sin((((t * 0.001) + (arg2 * arg3)) / arg2) * (2 * pi)) * a4);
}