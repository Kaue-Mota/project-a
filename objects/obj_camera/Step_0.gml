  var _x_to, _y_to;


     move_towards_point(mouse_x, mouse_y, 0);
     _x_to = obj_player.x + lengthdir_x(min(15, distance_to_point(mouse_x, mouse_y)), direction);
     _y_to = obj_player.y + lengthdir_y(min(15, distance_to_point(mouse_x, mouse_y)), direction);

     x += (_x_to - x) / 10;
     y += (_y_to - y) / 10;


     cam_x = -(camera_get_view_width(view_camera[0]) / 2) + x;
     cam_y = -(camera_get_view_height(view_camera[0]) /2) + y;

     cam_x = clamp(cam_x, 0, room_width-camera_get_view_width(view_camera[0]));
     cam_y = clamp(cam_y, 0, room_height-camera_get_view_height(view_camera[0]));

     camera_set_view_pos(view_camera[0], cam_x, cam_y);

