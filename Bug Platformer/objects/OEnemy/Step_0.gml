if (abs(x - CurrentX) < 90 && DifferenceBetweenPlayerandEnemy(global.PlayerX, x) < 60 && DifferenceBetweenPlayerandEnemy(global.PlayerX, x) > -60)  {
	
	if (DifferenceBetweenPlayerandEnemy(global.PlayerX, x) < 0) {
		sprite_index = SMaggotEnemyLeft;
		
		if (DifferenceBetweenPlayerandEnemy(global.PlayerX, x) >= -20) {
			moveDir = 0;
			sprite_index = SMaggotEnemyAttack;
			
		} else {
			moveDir = -1;
		}
		
	} else if (DifferenceBetweenPlayerandEnemy(global.PlayerX, x) > 0) {
		sprite_index = SMaggotEnemy;
		
		if (DifferenceBetweenPlayerandEnemy(global.PlayerX, x) <= 20) {
			moveDir = 0;
			sprite_index = SMaggotEnemyAttack_1;
			
			
		} else {
			moveDir = 1;
		}
		
	}
	
	
	
} else if (abs(x - CurrentX) > 95)  {
	



if (x - CurrentX < -150 || x - CurrentX > 150 ) {
		if (moveDir == -1) {
			moveDir = 1;
			sprite_index = SMaggotEnemy;
		} else {
			moveDir = -1
			sprite_index = SMaggotEnemyLeft;
		}
}
}
xspd = moveDir * moveSpd;
x += xspd;
	