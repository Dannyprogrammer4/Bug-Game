if (surface_exists(light_surf)) {
	
	surface_set_target(light_surf);
	draw_clear(c_black);
	
	with(OCheckpoint) {
		gpu_set_blendmode(bm_normal);
		draw_sprite_ext(SGlow, 0, x+10, y, 1.25, 1.5, 0, c_white, 0.5);
		
		
	}
	with(OPlayer) {
		gpu_set_blendmode(bm_normal);
		if (global.Lives <= 0) {
			draw_sprite_ext(SGlow, 0, x-30, y-80, 1, 1, 0, c_white, 0);
		} else {
			draw_sprite_ext(SGlow, 0, x-30, y-80, 1, 1, 0, c_white, 0.7);
		}
		
		
	}
	gpu_set_blendmode(bm_normal);
		surface_reset_target();
		draw_surface_ext(light_surf, 0, 0, 1, 1, 0, c_white, .3);
} else {
	light_surf = surface_create(room_width, room_height);
}