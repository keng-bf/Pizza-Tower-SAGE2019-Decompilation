if (global.panic && turned == 0)
{
    image_xscale *= -1;
    turned = 1;
}

scr_collide();
