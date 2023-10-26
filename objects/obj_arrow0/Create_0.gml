event_inherited()
damage = 5;
range = 360;
owner_id = noone;
knockback_time = 10;
scale = 1;

image_xscale = scale;
image_yscale = image_xscale

function bullet_die(){
speed = 0;
instance_change(obj_arrow_explode, false);

}


