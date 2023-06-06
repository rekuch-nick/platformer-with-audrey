if(player.state != "play"){ return; }

//if don't have a move target, find the closest rail and set speed to approach it
if(nextRail == noone){
	
	
	nextRail = findClosestObjWithinButExclude(objRail, 150, lastRail);
	if(nextRail == noone){
		for(var i=0; i<3; i++){ lastRail[i] = noone; }
		nextRail = findClosestObjWithinButExclude(objRail, 150, lastRail);
	}
	
	var angle = arctan2(nextRail.y - y, nextRail.x - x);
	xSpeed = cos(angle) * moveSpeed;
	ySpeed = sin(angle) * moveSpeed;
}


//if already at or past target, put it on exclude list
if(nextRail != noone && point_distance(x, y, nextRail.x, nextRail.y) <= moveSpeed){
	lastRail[2] = lastRail[1];
	lastRail[1] = lastRail[0];
	lastRail[0] = nextRail;
	nextRail = noone;
}





x += xSpeed;
y += ySpeed;

if(player.onPlat == id){
	player.x += xSpeed;
	player.y += ySpeed;
}


