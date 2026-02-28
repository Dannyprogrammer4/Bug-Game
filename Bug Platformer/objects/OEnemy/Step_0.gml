if (abs(x - CurrentX) <= 150 && DifferenceBetweenPlayerandEnemy(global.PlayerX, x) <= 150 && DifferenceBetweenPlayerandEnemy(global.PlayerX, x) >= -150)  {
	
	if (DifferenceBetweenPlayerandEnemy(global.PlayerX, x) < 0) {
		
		if (DifferenceBetweenPlayerandEnemy(global.PlayerX, x) >= -20) {
			moveDir = 0;
			sprite_index = SMaggotEnemyAttack;
			
		} else {
			moveDir = -1;
		}
		
	} else if (DifferenceBetweenPlayerandEnemy(global.PlayerX, x) > 0) {
		
		if (DifferenceBetweenPlayerandEnemy(global.PlayerX, x) <= 20) {
			moveDir = 0;
			sprite_index = SMaggotEnemyAttackRight;
			
			
		} else {
			moveDir = 1;
		}
		
	}
	
	
	
} else  {
	



if (x - CurrentX <= -200 || x - CurrentX >= 200) {
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
	