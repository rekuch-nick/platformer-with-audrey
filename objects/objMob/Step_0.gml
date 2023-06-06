if(player.state != "play"){ return; }




if(dir < 0 && image_xscale > 0){ image_xscale *= -1; }
if(dir > 0 && image_xscale < 0){ image_xscale *= -1; }

if(destroyThis){
	instance_destroy();
	return;
}



if(burnTime > 0){
	effect_create_above(ef_flare, x + irandom_range(-20, 20), y + irandom_range(-20, -60), 8, choose(c_red, c_yellow));
	burnTime --;
	if(burnTime <= 0){
		hurtsToTouch = false;
	}
}



thinkCD --;
if(thinkCD < 1){
	thinkCD = thinkCDMax;
	
	if(moveType == "dumb"){
		xSpeed = moveSpeed * dir;
	}
	
	
	if(irandom_range(0, 99) < jumpChanceOnThink){
		if(onGround || jumpFromAir){
			ySpeed += jumpPow;
			
		}
	}
	
	if(irandom_range(0, 99) < burnOnThinkChance){
		burnTime = burnTimeMax;
		hurtsToTouch = true;
	}
}

var xs = xSpeed;
if(xPush != 0){
	xs = xPush;
	if(xPush < 0){ xPush ++; }
	if(xPush > 0){ xPush --; }
}

for(var i=0; i<abs(xs); i++){
	x += dir;
	if( pointInBlock(x, y - 1) ){
		x -= dir;
		if(irandom_range(0, 99) < turnWhenBumpWallChance){ dir *= -1; thinkCD = 0; }
		break;
	}
}







onGround = pointInBlock(x, y+1);
if(onGround){
	if(ySpeed > 0){	ySpeed = 0; }
} else {
	ySpeed += grav;
}


var yDir = 1;
if(ySpeed < 0){ yDir = -1; }
var ys = ySpeed + yPush;
if(yPush != 0){
	xs = yPush;
	if(yPush < 0){ yPush ++; }
	if(yPush > 0){ yPush --; }
}


for(var i=0; i<abs(ys); i++){
	y += yDir;
	if(pointInBlock(x, y)){
		y -= yDir;
		break;
	}
}









