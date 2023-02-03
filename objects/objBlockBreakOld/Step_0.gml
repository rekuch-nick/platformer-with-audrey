image_index = floor(damage / 30);
if(id == player.onBreak){
	damage += 1;
	regenCD = 120;
}



if(damage > 120){
	player.onBreak = noone;
	y += 20;
}
		
if(y >= room_height){
	healCD --;
	if(healCD < 1){
		healCD = 600;
		damage = 0;
		x = xStart;
		y = yStart;
		image_index = 0;
	}
			

} 

if(damage > 0){
	regenCD --;
	
	if(regenCD < 1){ 
		damage --;
			// must not be == 0 because sometimes damage is .5 or -1.5 or something
		if(damage < 1){ regenCD = 120; }
	}
	
	
}

