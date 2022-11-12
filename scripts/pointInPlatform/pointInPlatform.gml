function pointInPlatform(a, b){
	
	if( collision_point(a, b, objPlatform, true, true) ){
		
		if(isPlayer){
			player.onPlat = collision_point(a, b, objPlatformMove, true, true);
		}
		
		
		return true;
	}
	
	
	return false;
}