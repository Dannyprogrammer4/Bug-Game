if (isDead) {

    // Apply gravity while dead
    deathFallSpeed += 0.4;
    y += deathFallSpeed;

    // Optional fade out
    image_alpha -= 0.02;

    // When off screen → respawn
    if (y > room_height + 20) {
		alarm[0] = room_speed * 1;
        exit;
    }

    exit;
}
//Get inputs

getControls();

//Direction
moveDir = rightKey - leftKey;

if yspd >= 0 && place_meeting(x, y + 2, OGround) {
	setOnGround(true);
}
	

if (moveDir == 1) {
	sprite_index = SPlayer;
	 
} else if (moveDir == -1) {
		sprite_index = SPlayerLeft;
}
	
//Get xspd
xspd = moveDir * moveSpd;

//Xcollisions
var _subPixel = 0.025;
if place_meeting(x + xspd, y, OGround) {
	
	var _pixelCheck = _subPixel * sign(xspd);
	while !place_meeting(x + _pixelCheck, y, OGround) {
		x += _pixelCheck;
	}
	xspd = 0;
}

x += xspd;
global.PlayerX = x;



if coyoteHangTimer > 0 {
	coyoteHangTimer --;
} else {
	yspd += grav;
	setOnGround(false);
}



if yspd > termVel { yspd = termVel; };

if onGround {
	jumpCount = 0;
	jumpHoldTimer = 0;
	coyoteJumpTimer = coyoteJumpFrames;
} else {
	coyoteJumpTimer--;
	if jumpCount == 0 && coyoteJumpTimer <= 0 {
		jumpCount = 1;
	}
}

if (jumpKeyBuffered && jumpCount < jumpMax) {
	//Reset the buffer
	jumpKeyBuffered = false;
	jumpKeyBufferTimer = 0;
	
	jumpCount++;
	
	jumpHoldTimer = jumpHoldtFrames[jumpCount - 1];
	setOnGround(false);
}
if !jumpKey { 
	jumpHoldTimer = 0;
}
if jumpHoldTimer > 0 {
	yspd = jspd[jumpCount - 1];
	
	jumpHoldTimer--;
}

_subPixel = 0.5;

if place_meeting( x, y + yspd, OGround ) {
	
	var _pixelCheck = _subPixel * sign(yspd);
	while !place_meeting(x, y + _pixelCheck, OGround) {
		y += _pixelCheck;
		
	}
	yspd = 0;
}


y += yspd;


// Damage check
if (!isDead && invincibleTimer <= 0 &&
    (place_meeting(x, y, OEnemy) || place_meeting(x, y, ODragonFly))) {
    
    global.Lives -= 1;
    invincibleTimer = 60;

    if (global.Lives <= 0) {
        isDead = true;
         deathFallSpeed = -6;  // little pop upward before fall
    }
}

// Countdown timer
if (invincibleTimer > 0) {
	if (!isDead) {
		
	xspd = -4 * sign(other.x - x);
	yspd = -3;
	image_alpha = 0.5;
    invincibleTimer--;
	}
} else {
	image_alpha = 1;
}