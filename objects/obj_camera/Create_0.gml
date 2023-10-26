/* cam_x = camera_get_view_x(view_camera[0]);
    cam_y = camera_get_view_y(view_camera[0]);*/
view_target = obj_player;
cam_width = 1920;
cam_height = 1080;
resolution_scale = 4;
global.view_width = cam_width / resolution_scale;
global.view_height = cam_height / resolution_scale;
window_set_size(global.view_width * resolution_scale, global.view_height * resolution_scale);
surface_resize(application_surface, global.view_width * resolution_scale, global.view_height * resolution_scale )


/*surface_resize(application_surface, cam_width+1, cam_height+1);
application_surface_draw_enable(false)

camera_set_view_pos(
view_camera[0],
floor(x-(cam_width*0.5)),
floor(y-(cam_height*0.5))
);*/

shake_power = 5;
shake_value = 0;