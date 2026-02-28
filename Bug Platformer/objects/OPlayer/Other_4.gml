if (file_exists("checkpoint.ini")){
	ini_open("checkpoint.ini");
	
	x = ini_read_real("player", "x", x);
	y = ini_read_real("player", "y", y);
	global.Lives = ini_read_real("player", "lives", _lives);
	
	ini_close();
	
}