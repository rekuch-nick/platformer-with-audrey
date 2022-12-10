function playerOnGround(){
	
	if(player.y > room_height){ return true; }
	
	if(player.onLadder && player.yIn <= 0){ return true; }
	
	if(pointInBlock(player.x, player.y + 1)){ return true; }
	if(pointInBlock(player.x-player.width+1, player.y + 1)){ return true; }
	if(pointInBlock(player.x+player.width-1, player.y + 1)){ return true; }
	
	if(player.yIn <= 0){
		if(pointInPlatform(player.x, player.y + 1)){ return true; }
		if(pointInPlatform(player.x-player.width+1, player.y + 1)){ return true; }
		if(pointInPlatform(player.x+player.width-1, player.y + 1)){ return true; }
	}
	
	
	return false;
}