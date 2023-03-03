if(player.state != "play"){ return; }









y += dir * moveSpeed;

if(y < yMin){
	dir *= -1;
}

if(y > yStart){ 
	dir *= -1; 
}

if(player.onPlat != noone){
	if(player.onPlat == id){
		if(y > yMin){
			player.y += moveSpeed * dir;
		}
	}
}
