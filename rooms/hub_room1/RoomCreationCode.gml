ini_open("saveData.ini");
if (global.SAGEsrank == 0 && global.medievalrank == "s" && global.ruinrank == "s" && global.dungeonrank == "s")
    ini_write_string("SAGE2019", "srank", 1);
		
if (global.SAGEsnicksrank == 0 && global.snickchallengerank == "s")
    ini_write_string("SAGE2019", "snicksrank", 1);

if (global.medievalsecret == 6 && global.ruinsecret == 6 && global.dungeonsecret == 6 && global.SAGEsecret == 0)
    ini_write_string("SAGE2019", "secret", 1);

if (global.medievaltoppin1 == 1 && global.medievaltoppin2 == 1 && global.medievaltoppin3 == 1 && global.medievaltoppin4 == 1 && global.medievaltoppin5 == 1 && global.ruintoppin1 == 1 && global.ruintoppin2 == 1 && global.ruintoppin3 == 1 && global.ruintoppin4 == 1 && global.ruintoppin5 == 1 && global.dungeontoppin1 == 1 && global.dungeontoppin2 == 1 && global.dungeontoppin3 == 1 && global.dungeontoppin4 == 1 && global.dungeontoppin5 == 1 && global.SAGEtoppin == 0)
    ini_write_string("SAGE2019", "toppin", 1);

if (global.medievaltreasure == 1 && global.ruintreasure == 1 && global.dungeontreasure == 1 && global.SAGEtreasure == 0)
    ini_write_string("SAGE2019", "treasure", 1);
ini_close();