// set / tile size

#macro TS		2

//get tiles in the room
var _w = ceil(room_width/ TS);
var _h = ceil(room_height/ TS);

//create motion planning grid
global.mp_grid = mp_grid_create(0, 0, _w, _h, TS, TS);

//add solid instances to grid
mp_grid_add_instances(global.mp_grid, par_collisions, false)


if (surface_exists(debris_surf)){
	surface_free(debris_surf)
	debris_surf = surface_create(room_width,room_height)
}

