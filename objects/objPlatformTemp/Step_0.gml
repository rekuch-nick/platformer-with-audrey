if(player.state != "play"){ return; }

image_alpha -= .0025;
if(image_alpha < .2){
	instance_destroy();
}

