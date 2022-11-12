if(id == player.onBreak){
	damage ++;
	
	
	image_index = floor(damage / 20);
	
	
	
	
}


if(damage > 120){
		player.onBreak = noone;
		
		y += 10;
		
		if(y >= room_height){
			instance_destroy();
		}
	}

