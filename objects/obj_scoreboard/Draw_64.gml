

if instance_exists(obj_player){
	draw_healthbar(8,8,256,32,global.hp,c_black,c_red,c_lime,0,true,true)
	draw_healthbar(8,36,256,60,global.fuel,c_black,c_red,c_red,0,true,true)
	draw_text(55, 64, "Score: " + string(score))
}
if (global.game_over) {
	draw_set_halign(fa_center)
	draw_text(room_width / 2, room_height / 2, "You died to the corruption. Press R to Restart")
}

