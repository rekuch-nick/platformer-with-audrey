if(player.state != "play"){ return; }


x += xSpeed;
y += ySpeed;
timeCD --;

if(timeCD < 1){ 
	instance_destroy();
}