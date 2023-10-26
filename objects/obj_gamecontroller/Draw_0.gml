if keyboard_check(vk_tab){
	mp_grid_draw(global.mp_grid);
}

if (surface_exists(debris_surf)){
	draw_surface(debris_surf,0,0)
	
}else{
	debris_surf = surface_create(room_width,room_height)
}



