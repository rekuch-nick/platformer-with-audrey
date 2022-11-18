function pointInBlock(a, b){
	if(b < 0){ return true; }
	
	if(object_index == objPlayer){
		player.onBreak = collision_point(a, b, objBlockBreak, true, true);
	}
	
	return collision_point(a, b, objBlock, true, true);
}