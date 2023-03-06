if(player.state != "play"){ return; }


if(player.x > x && player.y < y){
	
	
	player.x -= spd;
	
	with(objScrollable){
		if(other.id == id){ continue; }
		
		if(x > other.x && y < other.y){
			x -= other.spd;
			if(x <= other.x){ instance_destroy(); }
		}
	}
	
	
	
	cd -= spd;
	if(cd < 1){
		cd = 32;
		
		var a = room_width;
		var b = irandom_range(0, floor(y/32)) * 32;
		
		var obj = choose(objPlatform, objPlatform, objPlatform, objPlatform,
						objBlockZeb, objBlockSun, objBlockCloud,
						objPlatformFall
		);
		
		instance_create_depth(a, b, -10, obj);
	}
	
	
}