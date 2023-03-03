if(player.state != "play"){ return; }

if(passwallTime > 0){ passwallTime --; }
x += xSpeed;
y += ySpeed;
timeCD --;

if(timeCD < 1){ 
	instance_destroy();
}