

if(!keyboard_check(vk_left) and !keyboard_check(vk_right) and !keyboard_check(vk_up) and !keyboard_check(vk_down)){
	sprite_index = spr_still
}
else{
	if(global.fuel = 0){
	sprite_index = spr_nolightrun
	}	
	else{
	sprite_index = spr_player
	}
}

if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_stopper_dummy)) {
	image_xscale = -.25
	x += -move_speed
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_stopper_dummy)) {
	image_xscale = .25
	x += move_speed
}
if(keyboard_check_pressed(vk_up)){
	if (instance_place(x, y+1, obj_stopper_dummy)) {
		jump_height = -14
		vspeed = jump_height
	}
}
	
if(!instance_place(x, y+1, obj_stopper_dummy)){
	gravity = .5
}
else if(instance_place(x, y+1, obj_passable) and keyboard_check(vk_down)){
	gravity=.5
	obj_passable.solid=false
}
else{
	gravity=0
	obj_passable.solid=true
}
if(global.hp<100){
	alarm[0] = 1
}
if(burnable_prompt=true){
burnable_prompt=false	
}

