
if(spin){
	do{
		image_xscale += spinDir * .02;
	} until ( abs(image_xscale) > .05 );
	if(image_xscale < -1 && spinDir < 0){ spinDir *= -1; }
	if(image_xscale > 1 && spinDir > 0){ spinDir *= -1; }
}





if(grav != 0){
	var yy = y + floor(sprite_height / 3);
	
	if(!pointInBlock(x, yy) && !pointInPlatform(x, yy)){
		ySpeed = clamp(ySpeed + grav, ySpeed, gravMax);
	}
	
	var dir = 1;
	if(ySpeed < 0){ dir = -1; }
	
	for(var i=0; i<abs(ySpeed); i++){
		y += dir;
		if(dir < 0 && pointInBlock(x, yy)){
			//y -= dir;
			//break;
		}
		if(dir > 0 && ( pointInBlock(x, yy) || pointInPlatform(x, yy) ) ){
			y -= dir;
			ySpeed = 0;
			if(bounce > 2){ 
				ySpeed = -bounce;
				bounce /= 2;
			}
			break;
		}
	}
}


if(xSpeed != 0){
	
	var dir = 1;
	if(xSpeed < 0){ dir =-1; }
	
	for(var i=0; i<abs(xSpeed); i++){
		x += dir;
		if(pointInBlock(x, yy)){
			x -= dir;
			break;
		}
	}
	
	
	if(irandom_range(1, 4) == 1){
		// move xSpeed closer to 0
		if(xSpeed > 0){ xSpeed --; }
		if(xSpeed < 0){ xSpeed ++; }
		if(abs(xSpeed) < 1){ xSpeed = 0; }
	}
}



if(x < 0 || y < 0 || x > room_width || y > room_height){
	instance_destroy();
}

