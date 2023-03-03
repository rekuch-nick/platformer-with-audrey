if(player.state != "play"){ return; }



shotCD --;
if(shotCD < 1){
	shotCD = shotCDMax;
	
	instance_create_depth(x + (sprite_width / 2), y + (sprite_width / 2), -100, objBlockShot);
	
}


