if (x - CurrentX <= -200 || x - CurrentX >= 200) {
		if (moveDir == -1) {
			moveDir = 1;
			sprite_index = SDragonFly;
		} else {
			moveDir = -1
			sprite_index = SDragonFly_1;
		}
}

xspd = moveDir * moveSpd;
x += xspd;
	