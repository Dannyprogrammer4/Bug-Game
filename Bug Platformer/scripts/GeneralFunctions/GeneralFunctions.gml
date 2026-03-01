


function controlsSetup() {
	buffertime = 3;
	
	jumpKeyBuffered = 0;
	jumpKeyBufferTimer = 0;
	
}

function DifferenceBetweenPlayerandEnemy(playerX, enemyX) {
	
	return playerX - enemyX;
}



function getControls() {
	rightKey = keyboard_check(ord("D"));
		rightKey = clamp(rightKey, 0, 1);
	leftKey = keyboard_check(ord("A"));
		leftKey = clamp(leftKey, 0, 1);
	attack = keyboard_check_pressed(ord("E"));
		attack = clamp(attack, 0, 1);
		
		
	jumpKey = keyboard_check( vk_space);
		jumpKey = clamp(jumpKey, 0, 1);
	
	jumpKeyPressed = keyboard_check_pressed( vk_space);
		jumpKeyPressed = clamp(jumpKeyPressed, 0, 1);
		
	if jumpKeyPressed {
		jumpKeyBufferTimer = buffertime;
		
	} 
	if jumpKeyBufferTimer > 0 {
		jumpKeyBuffered = 1;
		jumpKeyBufferTimer--;
	} else {
		jumpKeyBuffered = 0;
	}
}