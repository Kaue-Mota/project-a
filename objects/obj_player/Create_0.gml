event_inherited();
//HEALTH
hp_max = 20;
hp = hp_max;


// Create Event
hsp = 0;
vsp = 0;
accel = 0.6;
scale = 1;

friction = 0.2;
max_speed = 1.5;
spd = max_speed;
image_xscale = scale;
image_yscale = image_xscale
instance_create_layer(x,y,"Player",obj_camera)

//bow
aim_dir = 0;
bow_dis = 1;
bow_dis_max = 10;
my_bow = obj_bow0

rot = 0;