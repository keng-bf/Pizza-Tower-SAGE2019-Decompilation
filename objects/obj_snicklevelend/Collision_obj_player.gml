if (image_index == 0)
{
    image_speed = 0.35;
    image_index = 0;
    global.panic = 0;
    global.snickchallenge = 0;
    instance_destroy(obj_snickexe);
    audio_stop_sound(mu_pizzatime);
    audio_stop_sound(mu_snickchallenge);
    audio_stop_sound(mu_snickchallengeend);
}
