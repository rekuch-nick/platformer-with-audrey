if(player.state != "play"){ return; }

image_alpha += .005 * dir;
if(image_alpha < .2){
	dir = 1;
	image_angle = -90;
	isSolid = false;
}

if(image_alpha >= 1){
	dir = -1;
	image_angle = 0;
	isSolid = true;
}

