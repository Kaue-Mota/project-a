event_inherited();
//HEALTH
global.hp_max = 10;
global.hp = global.hp_max;
global.follow_hp = global.hp;

//arma atual
global.arma_atual = spr_nothing;



// Create Event
hsp = 0;
vsp = 0;
accel = 0.6;
scale = 1;

friction = 0.2;
max_speed = 1.6;
spd = max_speed;
image_xscale = scale;
image_yscale = image_xscale
instance_create_layer(x,y,"Player",obj_camera)

//bow
aim_dir = 0;
bow_dis = 1;
bow_dis_max = 5;
my_bow = obj_bow_poison;

rot = 0;