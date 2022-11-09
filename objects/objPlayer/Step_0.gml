gamepadCheck();



playerGetInput();
xSpeed = xIn * walkSpeed;

//look in direction of arrow press
if(facing > 0){
	if(image_xscale < 0){ image_xscale *= -1; }
} else {
	if(image_xscale > 0){ image_xscale *= -1; }
}


//jump
if(pressedJump && jumps > 0){
	onLadder = false;
	ySpeed = jumpPow;
	jumps --;
}

//short jump
if(!holdingJump && ySpeed < 0){
	ySpeed = 0;
}

//check for ladder
if(collision_rectangle(x-width, y+head, x+width, y, objLadder, true, true) || 
					collision_rectangle(x-width, y+head, x+width, y, objLadderTop, true, true) ){
	if(yIn != 0){ 
		onLadder = true; 
	}
} else {
	onLadder = false;
}

//climb ladder
if(onLadder){
	if(yIn < 0){
		ySpeed = -3;
	} else if (yIn > 0) {
		ySpeed = 3;
	} else {
		ySpeed = 0;
	}
}





//pushPlayer
if(xPush != 0){
	xSpeed = xPush;
	if(xPush > 0){ xPush --; }
	if(xPush < 0){ xPush ++; }
}
if(yPush != 0){
	ySpeed = yPush;
	if(yPush > 0){ yPush --; }
	if(yPush < 0){ yPush ++; }
}


if(onPlat != noone){
	xSpeed += onPlat.dir * onPlat.moveSpeed;
}


//apply gravity
onPlat = noone;
if(playerOnGround()){
	jumps = jumpsMax;
	if(ySpeed > 0){ ySpeed = 0; }
} else {
	ySpeed ++;
}



if(ySpeed > 0){
	for(var i=0; i<abs(ySpeed); i++){
		y ++;
		if(playerOnGround()){
			ySpeed = 0;
			break;
		}
	}
}

if(ySpeed < 0){
	for(var i=0; i<abs(ySpeed); i++){
		y --;
		if(	pointInBlock(x, y+head) ||	pointInBlock(x+width-1, y+head) || pointInBlock(x-width+1, y+head)	){
			y ++;
			break;
		}
	}
}





if(xSpeed != 0){
	if(xSpeed > 0){
		dir = 1;
	} else {
		dir = -1;
	}
	
	x += xSpeed;
	
	while(collision_rectangle(x, y+head, x + (width * dir), y, objBlock, true, true)){
		x -= dir;
	}
}











//counters
if(hurtTime > 0){
	hurtTime --;
}




//set picture
f = imgPlayerStanding;
if(xSpeed != 0){ f = imgPlayerWalking; }
if(onPlat != noone){ f = imgPlayerStanding; }
if(yIn > 0){ f = imgPlayerDucking; }
if(onLadder){
	f = imgPlayerClimbing;
	if(yIn == 0){ image_index = 0; }
}
if(hurtTime > 0){ f = imgPlayerHurt; }
sprite_index = f;





