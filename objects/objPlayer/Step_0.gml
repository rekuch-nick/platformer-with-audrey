gamepadCheck();
playerGetInput();


if(player.state == "next room"){
	if(fireworksTime > 0){
		fireworksTime --;
		if(fireworksTime % 3 == 0){
			var a = camera_get_view_x(view_camera[0]) + irandom_range(0,  camera_get_view_width(view_camera[0]));
			var b = camera_get_view_y(view_camera[0]) + irandom_range(0,  camera_get_view_height(view_camera[0]));

			
			effect_create_above(ef_firework, a, b, choose(2, 2, 3), choose(c_aqua, c_white));
		}
	} else {
		if(nextRoom == noone){
			room_goto_next();
		} else {
			room_goto(nextRoom);
		}
		player.state = "play";
		
	}
}

if(player.state != "play"){ return; }


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
	coyoteTime = 0;
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

//set push for ice
if(( xSpeed != 0 ) && player.onBreak != noone){
	if(player.onBreak.object_index == objBlockIce){
		xPush = (walkSpeed + 2) * facing;
	}
} else if( landingFrame && player.onBreak != noone){
	if(player.onBreak.object_index == objBlockIce){
		xPush = 4 * facing;
	}
}



//pushPlayer
if(xPush != 0){
	
	var xOld = xSpeed;
	xSpeed = xPush;
	if(xOld > 0 && xOld > xPush){ xSpeed = xOld; }
	if(xOld < 0 && xOld < xPush){ xSpeed = xOld; }
	var m = 1;
	if(onBreak != noone && onBreak.object_index == objBlockIce){ m = .5; }
	if(abs(xPush) < 1){ m = .5; }
	
	if(xPush > 0){ xPush -= m; }
	if(xPush < 0){ xPush += m; }
}
if(yPush != 0){
	ySpeed = yPush;
	if(yPush > 0){ yPush --; }
	if(yPush < 0){ yPush ++; }
}

//move player with moving platform
if(onPlat != noone){
	if(onPlat.object_index == objPlatformMove || onPlat.object_index == objPlatformMove2 ){
		xSpeed += onPlat.dir * onPlat.moveSpeed;
	}
}







//apply gravity
onPlat = noone;
onBreak = noone;
if(playerOnGround()){
	jumps = jumpsMax;
	if(ySpeed > 0){ ySpeed = 0; }
} else {
	ySpeed ++;
	if(jumps == jumpsMax){ jumps --; }
}

//fall
landingFrame = false;
if(ySpeed > 0){
	for(var i=0; i<abs(ySpeed); i++){
		y ++;
		if(playerOnGround()){
			landingFrame = true;
			ySpeed = 0;
			break;
		}
	}
}

//ascend
if(ySpeed < 0){
	for(var i=0; i<abs(ySpeed); i++){
		y --;
		if(	pointInBlock(x, y+head) ||	pointInBlock(x+width-1, y+head) || pointInBlock(x-width+1, y+head)	){
			y ++;
			break;
		}
	}
}



// walk
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




//use items
if(pressedB){
	if(item == objPlatformTemp){
		yPush = -4;
		instance_create_depth(x-48, y+2, depth, item);
	}
}









//counters
if(hurtTime > 0){ hurtTime --; }
if(coyoteTime > 0){ coyoteTime --; }




//set picture
f = imgPlayerStanding;
if(xSpeed != 0){ 
	f = imgPlayerWalking; 
	if(onPlat != noone){ f = imgPlayerStanding; }
}
if(ySpeed > 0){ f = imgPlayerFall; }
if(ySpeed < 0){
	f = imgPlayerJump1;
	if(jumps == 0){ f = imgPlayerJump2; }
}
if(yIn > 0 && !onLadder){ f = imgPlayerDucking; }
if(onLadder){
	f = imgPlayerClimbing;
	if(yIn == 0){ image_index = 0; }
}
if(hurtTime > 0){ f = imgPlayerHurt; } else { beingShocked = false; }
if(beingShocked){ f = imgPlayerShock; }
sprite_index = f;





