if (player == 1)
{
    if (got && obj_player.state != 22)
	{
		instance_destroy(effectid);
		instance_destroy();
	}
}

if (player == 0)
    y = Wave(ystart - 5, ystart + 5, 2, 2);