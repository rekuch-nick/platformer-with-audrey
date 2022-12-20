if(player.state != "play"){ return; }


if(player.onPlat == id){
	y ++;
	if(!playerOnGround()){
		player.y ++;
	}
} else {
	
	if(y > yStart){
		riseWait ++;
		
		if(riseWait > 600){
			y --;
		}
		
		
	} else {
		
		riseWait = 0;
	}
	
	
}