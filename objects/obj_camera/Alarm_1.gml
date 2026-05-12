if (global.panic || global.snickchallenge)
{
    global.seconds -= 1;
    
    if (global.collect >= 5)
        global.collect -= 5;
    
    if (global.seconds < 0)
    {
        global.seconds = 59;
        global.minutes -= 1;
    }
}

alarm[1] = 60;
