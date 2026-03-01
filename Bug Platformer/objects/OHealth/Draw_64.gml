var guiX = 30; 
var guiY = 30; 

if (global.Lives == 3) { 
    draw_sprite(SHealth, 0, guiX, guiY); 
} else if (global.Lives == 2) { 
    draw_sprite(SHealth_2, 0, guiX, guiY); 
} else if (global.Lives == 1) { 
    draw_sprite(SHealth_1, 0, guiX, guiY); 
} else if (global.Lives == 0) { 
    draw_sprite(SHealth_3, 0, guiX, guiY); 
}