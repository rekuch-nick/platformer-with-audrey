function pointInPlatform(a, b){
	
	var plat = collision_point(a, b, objPlatform, true, true);
	
	if( plat != noone && plat.isSolid ){
		
		
		if(object_index == objPlayer){
			player.onPlat = collision_point(a, b, objPlatformMove, true, true);
			
			if(player.onPlat == noone){
				player.onPlat = collision_point(a, b, objPlatformRide, true, true);
			}
			
			if(player.onPlat == noone){
				player.onPlat = collision_point(a, b, objPlatformElevator, true, true);
			}
			
			if(player.onPlat == noone){
				player.onPlat = collision_point(a, b, objPlatformFall, true, true);
			}
			
			if(player.onPlat == noone){
				player.onPlat = collision_point(a, b, objPlatformMoveUp, true, true);
			}
			
			
		}
		
		return true;
	}
	
	return false;
}