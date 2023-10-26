instance_create_layer(x,y,"UI", obj_cursor)



enum states{
	IDLE,
	MOVE,
	ATTACK,
	DEAD,
}

//path
global.mp_grid = 0;
global.drag = .5;

//surface
debris_surf = surface_create(room_width,room_height);

randomize()
global.part_system = part_system_create();

part_system_depth(global.part_system, - 100);
