//if player standing on me, don't heal or restore
if(player.onBreak == id){
	healCD = 0;
	restoreCD = 0;
	
	// give player a chance to jump when it falls
	damage ++;
	if(damage == damageMax){
		player.coyoteTime = 20;
	}
}

// if damaged, increase heal timer
if(damage > 0){
	healCD ++;
	// if heal timer full, heal a point
	if(healCD >= healCDMax){
		damage --;
	}
// reset heal timer anytime not damaged
} else {
	healCD = 0;
}


//fall when totally damaged, also make player forger they stood on me
if(damage >= damageMax){
	y += 20;
	if(player.onBreak == id){
		player.onBreak = noone;
	}
}

//if all the way off the screen, check for restore
if(y >= room_height){
	restoreCD ++;
	if(restoreCD >= restoreCDMax){
		
		// don't restore on top of player
		if(point_distance(player.x, player.y, xStart, yStart) >= 400){
			restoreCD = 0;
			healCD = 0;
			damage = 0;
			x = xStart;
			y = yStart;
		}
	}
}


//choose costume based on damage / damageMax
image_index = floor((damage / damageMax) * lastFrame);