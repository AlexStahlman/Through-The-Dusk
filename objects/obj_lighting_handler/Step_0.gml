/// @description Insert description here
// You can write your code in this editor
if(surface_exists(darkness)){
surface_set_target(darkness)
draw_set_color(c_black)
draw_set_alpha(1)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_color(c_white)
if(instance_exists(obj_player)){
gpu_set_blendmode(bm_subtract)
if(global.fuel>0){
draw_sprite_ext(spr_light_circle,0,obj_player.x,obj_player.y-(obj_player.sprite_height/2),1,1,0,c_white,1)
}
gpu_set_blendmode(bm_normal)
surface_reset_target()


}
else{
darkness=surface_create(room_width,room_height)	
surface_set_target(darkness)
draw_clear_alpha(c_black,0)
surface_reset_target()
}
}


