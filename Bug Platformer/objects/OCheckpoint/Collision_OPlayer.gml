if (image_index == 1) {
	exit;	
} 

image_index = 1;

ini_open("checkpoint.ini");

ini_write_real("player", "x", other.x);
ini_write_real("player", "y", other.y);
ini_write_real("player", "lives", other._lives);
ini_close();
