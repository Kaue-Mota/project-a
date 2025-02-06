/// @description arrow 3

/// @description arrow 2
var _dir = point_direction(x,y, mouse_x, mouse_y);
var _inst3 = instance_create_layer(x,y, "Projectiles", obj_arrow0);
		
	
		 obj_camera.shake_value = .8;
		obj_player.bow_dis = 3;
		  escala_y = .8;
				escala_x = 1.5;
		with (_inst3) {
			speed = other.arrow_speed;
			direction = _dir + choose(3, 0, -3);
			image_angle = direction;
			owner_id = other;
			}