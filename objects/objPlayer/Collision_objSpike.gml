


if(hurtTime < 1){
	
	if(other.object_index == objShot && sprite_index == imgPlayerDucking){
		instance_create_depth(other.x, other.y, other.depth, effShot);
		instance_destroy(other);
		return;
	}
	
	

	hurtTime = 60;
	yPush = -13;
	
	
	var xx = other.x + (other.sprite_width / 2);
	
	if(x < xx){ 
		xPush = -10; 
	} else{ 
		xPush = 10; 
	}
	
}