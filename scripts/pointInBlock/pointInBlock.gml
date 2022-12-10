function pointInBlock(a, b){
	if(b < 0){ return true; }
	
	
	if(object_index == objPlayer){
		
		player.onBreak = collision_point(a, b, objBlockBreak, true, true);
			
		if(player.onBreak == noone){
			player.onBreak = collision_point(a, b, objBlockIce, true, true);
		}
		
		if(player.onBreak != noone && player.y >= player.onBreak.y){ player.onBreak = noone; }
		
	}
	
	return collision_point(a, b, objBlock, true, true);
}