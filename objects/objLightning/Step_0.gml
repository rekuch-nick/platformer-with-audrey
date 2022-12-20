if(player.state != "play"){ return; }

passWallTime = clamp(passWallTime - 1, 0, 100);

y += ySpeed;
ySpeed = clamp(ySpeed + 1, -10, 5);

image_angle += choose(-1, 1);

image_yscale += .03;

if(y > room_height){ 
	instance_destroy();
}