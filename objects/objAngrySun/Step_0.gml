if(player.state != "play"){ return; }



x += xSpeed;
y += ySpeed;
while(y < 0){ y++; }

thinkCD --; if(thinkCD < 1){
	thinkCD = choose(10, 20, 30, 40);
	
	if(choose(true, false)){
		xt = camera_get_view_x(view_camera[0]) + irandom_range(300, 1360);
		//yt = camera_get_view_y(view_camera[0]) + irandom_range(60, 360);
		yt = irandom_range(60, 360);
		
		var angle = arctan2(yt - y, xt - x);
		xSpeed = cos(angle) * moveSpeed;
		ySpeed = sin(angle) * moveSpeed;
		
	} else {
		xSpeed = 0; ySpeed = 0;
	}
}


if(player.x < x && image_xscale < 0){ image_xscale *= -1; }
if(player.x > x && image_xscale > 0){ image_xscale *= -1; }

shootCD --; if(shootCD < 1){
	shootCD = 120;
	instance_create_depth(x, y + 20, -100, objShot);
}