if !global.snickchallenge
{
	var _room =[
	[medieval_1, 11000],
	[ruin_1, 8300],
	[dungeon_1, 10400],
];
	for (var i = 0; i < array_length(_room); i++){
		if room == _room[i][0]{
			global.srank = _room[i][1]
			global.arank = global.srank - (global.srank / 4);
			global.brank = global.srank - ((global.srank / 4) * 2);
			global.crank = global.srank - ((global.srank / 4) * 3);
		}
	}
}
else
{

    global.srank = 8300;
    global.arank = global.srank - (global.srank / 4);
    global.brank = global.srank - ((global.srank / 4) * 2);
    global.crank = global.srank - ((global.srank / 4) * 3);
}