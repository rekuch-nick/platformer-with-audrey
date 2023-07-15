if(player.state != "play"){ return; }



x += xs;
if(choose(true, false, false)){
	y += irandom_range(-1, 1);
}

if(xs > 0 && x > player.x + 30){
	image_xscale *= -1;
	xs *= -2;
	
	instance_create_depth(x, y, depth, objCoinFall);
	instance_create_depth(x, y, depth, objCoinFall);
	instance_create_depth(x, y, depth, objCoinFall);
	instance_create_depth(x, y, depth, objCoinFall);
	instance_create_depth(x, y, depth, objCoinFall);
	instance_create_depth(x, y, depth, objCoinFall);
	instance_create_depth(x, y, depth, objCoinFall);
	instance_create_depth(x, y, depth, objCoinFall);
	instance_create_depth(x, y, depth, objCoinFall);
	instance_create_depth(x, y, depth, objCoinFall);
}

if(x < -500){ instance_destroy(); }