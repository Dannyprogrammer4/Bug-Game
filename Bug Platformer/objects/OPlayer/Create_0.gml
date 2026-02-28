onGround = true;

function setOnGround(_val = true) {
	if _val == true {
		onGround = true;
		coyoteHangTimer = coyoteHangFrames;
	} else {
		onGround = false;
		coyoteHangTimer = 0;
	}
}

//Controls Setup

controlsSetup();


//Moving
moveDir = 0;
moveSpd = 9;
xspd = 0;
yspd = 0;


//Jumping
grav = 0.5;
termVel = 10;
jspd[0] = -8;
jspd[1] = -5;
jumpMax = 2;
jumpCount = 0;
jumpHoldTimer = 0;
jumpHoldtFrames[0] = 13;
jumpHoldtFrames[1] = 8;


coyoteHangTimer = 0;
coyoteHangFrames = 4;

coyoteJumpFrames = 5;
coyoteJumpTimer = 0;
global.PlayerX = x;
global.Lives = 3;
invincibleTimer = 0;
waitTimer = 5;
isDead = false;
deathFallSpeed = 0;
