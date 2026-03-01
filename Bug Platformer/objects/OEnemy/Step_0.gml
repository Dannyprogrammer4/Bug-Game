var dist = global.PlayerX - x;
var absDist = abs(dist);

// DEAD
if (global.DamageAnimation && place_meeting(x, y, OPlayer)) {
    deathFallSpeed += 0.2;
    y += deathFallSpeed;
    image_alpha -= 0.05;

    if (y > room_height + 150) {
        instance_destroy();
    }
    exit; // stop further logic
}

// ------------------
// STATE MACHINE
// ------------------

switch (state) {

    case "idle":

        moveSpd = 2;

        // Enter chase only if clearly close
        if (absDist < 60) {
            state = "chase";
        }

        break;


    case "chase":

        moveSpd = 4;

        // Leave chase only if clearly far
        if (absDist > 80) {
            state = "idle";
            break;
        }

        if (absDist <= 20) {
            state = "attack";
            break;
        }

        moveDir = sign(dist);

        if (moveDir < 0) {
            sprite_index = SMaggotEnemyLeft;
        } else {
            sprite_index = SMaggotEnemy;
        }

        break;


    case "attack":

        moveDir = 0;

        if (absDist > 25) {
            state = "chase";
            break;
        }

        if (dist < 0) {
            sprite_index = SMaggotEnemyAttack;
        } else {
            sprite_index = SMaggotEnemyAttack_1;
        }

        break;
}

// Apply movement
x += moveDir * moveSpd;