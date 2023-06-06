if(other.object_index == objMob){
	
	if(other.destroyWhenTouched){ other.destroyThis = true; }
	if(!other.hurtsToTouch){ return; }
}


if(hurtTime < 1){
	
	if(other.bookBlocks && item == imgPlayerBook){
		if( (facing == 1 && other. x > x) || (facing == -1 && other. x < x) ){
			effect_create_above(ef_smoke, other.x, other.y, 2, c_aqua);
			instance_destroy(other);
			return;
		}
	}
	
	if( (other.object_index == objShot || other.object_index == objBlockShot )
				&& sprite_index == imgPlayerDucking){
		instance_create_depth(other.x, other.y, other.depth, effShot);
		instance_destroy(other);
		return;
	}
	
	
	if(other.object_index == objLightning){
		beingShocked = true;
	}
	

	hurtTime = 60;
	yPush = -13;
	hp --;
	
	var xx = other.x + (other.sprite_width / 2);
	
	if(x < xx){ 
		xPush = -10; 
	} else{ 
		xPush = 10; 
	}
	
}