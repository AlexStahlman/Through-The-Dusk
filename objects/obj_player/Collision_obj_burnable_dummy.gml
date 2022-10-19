/// @description Insert description here
// You can write your code in this editor
burnable_prompt=true
if(keyboard_check_pressed(ord("E"))){
instance_destroy(other)	
global.fuel-=100/3
}