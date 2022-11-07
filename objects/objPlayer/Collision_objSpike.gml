


if(hurtTime < 1){

	hurtTime = 60;
	yPush = -13;
	
	
	var xx = other.x + (other.sprite_width / 2);
	
	if(x < xx){ 
		xPush = -10; 
	} else{ 
		xPush = 10; 
	}
	
}