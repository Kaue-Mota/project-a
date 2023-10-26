camera_set_view_size(view_camera[0], global.view_width, global.view_height)



var _shake = power (shake_value, 2 ) * shake_power;
x += random_range(-_shake,_shake);
y += random_range(-_shake,_shake);

if (shake_value > 0) shake_value -= .1;

