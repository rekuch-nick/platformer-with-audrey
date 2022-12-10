if(id == player.onBreak){
	damage ++;
	image_index = floor(damage / 20);	
}


if(damage > 120){
	
		
	if(y >= room_height){
		healCD --;
		if(healCD < 1){
			healCD = 600;
			damage = 0;
			x = xStart;
			y = yStart;
			image_index = 0;
			
			var disFromPlayer = abs(x - player.x) + abs(y - player.y);
			if(disFromPlayer < 120){
				healCD = 60;
				y = room_height + 10;
				damage = 121;
			}
		}
		
	} else {
		player.onBreak = noone;
		y += 20;
	}
}

