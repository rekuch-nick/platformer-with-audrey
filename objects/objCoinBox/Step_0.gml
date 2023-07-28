if(player.state != "play"){ return; }



if(player.onBreak == id){
	
	if(player.yIn > 0){
		y ++;
		if(coins > 0 && irandom_range(0, 30) == 1){
			coins --;
			var c = instance_create_depth(x + (sprite_width / 2), y + 64, depth - 1, objCoinFall);
			c.xSpeed = irandom_range(-2, 2);
			if(coins < 1){
				sprite_index = imgCoinBoxDone;
			}
		}
		
		
	} else {
		if(y > yStart){
			y --;
			player.y --;
	
		}
	}


	
	
} else if (irandom_range(1, 90) == 1){
	if(y > yStart){ y --; }
}





