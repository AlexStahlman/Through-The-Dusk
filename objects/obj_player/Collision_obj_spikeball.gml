/// @description Insert description here
// You can write your code in this editor
burnable_prompt=true
if(alarm_get(1)==-1){
alarm_set(1,15)	
}
if(keyboard_check_pressed(ord("E"))){
alarm_set(1,-1)	
instance_destroy(other)	
global.fuel-=100/3	
}

