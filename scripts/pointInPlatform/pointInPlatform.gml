function pointInPlatform(a, b){
	
	if( collision_point(a, b, objPlatform, true, true) ){
		
		if(object_index == objPlayer){
			player.onPlat = collision_point(a, b, objPlatformMove, true, true);
			
			if(player.onPlat == noone){
				player.onPlat = collision_point(a, b, objPlatformFall, true, true);
			}
		}
		
		
		return true;
	}
	
	
	return false;
}