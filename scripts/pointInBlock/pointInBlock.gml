function pointInBlock(a, b){
	if(b < 0){ return true; }
	
	return collision_point(a, b, objBlock, true, true);
}